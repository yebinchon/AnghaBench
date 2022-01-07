
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {TYPE_1__* state; int lock; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int port; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ULITE_STATUS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (int *) ;
 int uart_in32 (int ,struct uart_port*) ;
 int ulite_receive (struct uart_port*,int) ;
 int ulite_transmit (struct uart_port*,int) ;

__attribute__((used)) static irqreturn_t ulite_isr(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 int stat, busy, n = 0;
 unsigned long flags;

 do {
  spin_lock_irqsave(&port->lock, flags);
  stat = uart_in32(ULITE_STATUS, port);
  busy = ulite_receive(port, stat);
  busy |= ulite_transmit(port, stat);
  spin_unlock_irqrestore(&port->lock, flags);
  n++;
 } while (busy);


 if (n > 1) {
  tty_flip_buffer_push(&port->state->port);
  return IRQ_HANDLED;
 } else {
  return IRQ_NONE;
 }
}
