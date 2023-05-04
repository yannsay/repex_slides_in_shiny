library(shiny)

# https://shiny.rstudio.com/gallery/including-html-text-and-markdown-files.html

ui <- fluidPage(
  fluidRow(
    column(4,
           includeHTML("presentation.html")
           ),
    column(4,
           includeMarkdown("presentation.md")
    ),
    column(4,
           includeMarkdown("presentation.qmd")
           )
  )
)

server <- function(input, output) {

}

# Run the application
shinyApp(ui = ui, server = server)
