
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct pic32_sport {int irq_rx; } ;


 int PIC32_CLR (int ) ;
 int PIC32_UART_STA ;
 int PIC32_UART_STA_URXEN ;
 int disable_irq (int ) ;
 int pic32_uart_writel (struct pic32_sport*,int ,int ) ;
 struct pic32_sport* to_pic32_sport (struct uart_port*) ;

__attribute__((used)) static void pic32_uart_stop_rx(struct uart_port *port)
{
 struct pic32_sport *sport = to_pic32_sport(port);


 disable_irq(sport->irq_rx);


 pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_STA),
    PIC32_UART_STA_URXEN);
}
