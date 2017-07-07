
library(rvest)

url <- 'http://auspost.com.au/pol/app/locate/post-office/nsw/abbotsbury/2176'

writeLines(sprintf("var page = require('webpage').create();
page.open('%s', function () {
                   console.log(page.content); //page source
                   phantom.exit();
                   });", url), con="scrape.js")

system("phantomjs scrape.js > scrape.html")
pg <- html("scrape.html")
pg %>% html_nodes("#utime") %>% html_text()



webpage %>%
  html_nodes("h2") %>%
  html_text()

p_nodes <- webpage %>% 
  html_nodes("p")
