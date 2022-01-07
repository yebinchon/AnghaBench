
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct pic32_sport {int dummy; } ;


 int PIC32_CLR (int ) ;
 int PIC32_SET (int ) ;
 int PIC32_UART_MODE ;
 int PIC32_UART_MODE_LPBK ;
 unsigned int TIOCM_LOOP ;
 int pic32_uart_writel (struct pic32_sport*,int ,int ) ;
 struct pic32_sport* to_pic32_sport (struct uart_port*) ;

__attribute__((used)) static void pic32_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct pic32_sport *sport = to_pic32_sport(port);


 if (mctrl & TIOCM_LOOP)
  pic32_uart_writel(sport, PIC32_SET(PIC32_UART_MODE),
     PIC32_UART_MODE_LPBK);
 else
  pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_MODE),
     PIC32_UART_MODE_LPBK);
}
