
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int sci_transmit_chars (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t sci_tx_interrupt(int irq, void *ptr)
{
 struct uart_port *port = ptr;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 sci_transmit_chars(port);
 spin_unlock_irqrestore(&port->lock, flags);

 return IRQ_HANDLED;
}
