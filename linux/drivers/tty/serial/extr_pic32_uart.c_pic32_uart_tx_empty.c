
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;
struct pic32_sport {int dummy; } ;


 int PIC32_UART_STA ;
 int PIC32_UART_STA_TRMT ;
 int pic32_uart_readl (struct pic32_sport*,int ) ;
 struct pic32_sport* to_pic32_sport (struct uart_port*) ;

__attribute__((used)) static unsigned int pic32_uart_tx_empty(struct uart_port *port)
{
 struct pic32_sport *sport = to_pic32_sport(port);
 u32 val = pic32_uart_readl(sport, PIC32_UART_STA);

 return (val & PIC32_UART_STA_TRMT) ? 1 : 0;
}
