#Importing libraries:
library(mvoutlier)

#Reading data
data <- read.table('F:\\Work\\MLprojects\\R\\Outliers_Detector\\ProfitData.csv', sep=',', header=T)

#Viewing data
data

#Sign2 is an outlier detection method from the "mvoutlier" package.
outliers <- sign2(cbind(data$wfinal01, data$ProfitPct))

#Viewing results
outliers #Note: all "0"s are outliers.

#Activating the server to integrate with Tableau
Rserve::Rserve()
