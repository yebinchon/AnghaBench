
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct pic32_sport {int dummy; } ;


 int PIC32_SET (int ) ;
 int PIC32_UART_STA ;
 int PIC32_UART_STA_UTXEN ;
 int pic32_uart_irqtxen (struct pic32_sport*,int) ;
 int pic32_uart_writel (struct pic32_sport*,int ,int ) ;
 struct pic32_sport* to_pic32_sport (struct uart_port*) ;

__attribute__((used)) static void pic32_uart_start_tx(struct uart_port *port)
{
 struct pic32_sport *sport = to_pic32_sport(port);

 pic32_uart_irqtxen(sport, 1);
 pic32_uart_writel(sport, PIC32_SET(PIC32_UART_STA),
    PIC32_UART_STA_UTXEN);
}
