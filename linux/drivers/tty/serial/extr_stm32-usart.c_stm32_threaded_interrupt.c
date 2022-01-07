
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct stm32_port {scalar_t__ rx_ch; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stm32_receive_chars (struct uart_port*,int) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;

__attribute__((used)) static irqreturn_t stm32_threaded_interrupt(int irq, void *ptr)
{
 struct uart_port *port = ptr;
 struct stm32_port *stm32_port = to_stm32_port(port);

 spin_lock(&port->lock);

 if (stm32_port->rx_ch)
  stm32_receive_chars(port, 1);

 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
