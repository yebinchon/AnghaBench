
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int pic32_uart_do_rx (struct uart_port*) ;

__attribute__((used)) static irqreturn_t pic32_uart_rx_interrupt(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;

 pic32_uart_do_rx(port);

 return IRQ_HANDLED;
}
