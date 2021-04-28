### Demo for Wellbeing Survey Data ###

install.packages("tidyverse")

setwd("~/Documents/NEXUS Job /Wellbeing Analysis")

##Descriptive statistics on the different CONTINUOUS variables##
install.packages("pastecs")

library(pastecs)

data <- read.csv("admission.csv")

options(scipen= 100)
options(digits=3)
stats <- stat.desc(data)
write.csv(stats, file = "descripdata.csv")


##Descriptive statistics on the different CATEGORICAL variables 
install.packages("summarytools")

library(knitr)
library(summarytools)
opts_chunk$set(results = 'asis',      # This is essential (can also be set at the chunk-level)
               comment = NA, 
               prompt = FALSE, 
               cache = FALSE)

st_options(plain.ascii = FALSE,       
           style = "rmarkdown",        
           footnote = NA,
           subtitle.emphasis = FALSE
)            

st_css()                              # This is a must; without it, expect odd layout,

view(dfSummary(data, style = 'grid', graph.magnif = 0.75, tmp.img.dir = "/tmp"))
