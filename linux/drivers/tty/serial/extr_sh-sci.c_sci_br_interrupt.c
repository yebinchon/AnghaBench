
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SCxSR_BREAK_CLEAR (struct uart_port*) ;
 int sci_clear_SCxSR (struct uart_port*,int ) ;
 int sci_handle_breaks (struct uart_port*) ;

__attribute__((used)) static irqreturn_t sci_br_interrupt(int irq, void *ptr)
{
 struct uart_port *port = ptr;


 sci_handle_breaks(port);
 sci_clear_SCxSR(port, SCxSR_BREAK_CLEAR(port));

 return IRQ_HANDLED;
}
