library(ballr)
season_2019 <- NBAPerGameAdvStatistics(season = 2019)


Utah_Jazz_Season <- NBASeasonTeamByYear("UTA", 2019)
#####https://cran.r-project.org/web/packages/ballr/ballr.pdf
Utah_Jazz_Season$away_bin <- ifelse(Utah_Jazz_Season$away_indicator == '@',1,0)
Utah_Jazz_Season$Win_bin <- ifelse(Utah_Jazz_Season$x_4 == 'W',1,0)
summary(Utah_Jazz_Season[Utah_Jazz_Season$away_bin == 1,]$Win_bin)
#### This means they have won 36% of the time they have been away and lost 64% of the time they have been away this season.
##Players_Stats <- NBAPerGameStatisticsPer100Poss(season = 2019)
##Players_Stats[Players_Stats$player == "Donovan Mitchell",]
players <- NBAPerGameStatistics(season = 2019)
Donovan_Mitchell <- players[players$player == 'Donovan Mitchell',]
