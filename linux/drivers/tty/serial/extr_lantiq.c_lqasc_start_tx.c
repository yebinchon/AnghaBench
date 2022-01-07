
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct ltq_uart_port {int lock; } ;


 int lqasc_tx_chars (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ltq_uart_port* to_ltq_uart_port (struct uart_port*) ;

__attribute__((used)) static void
lqasc_start_tx(struct uart_port *port)
{
 unsigned long flags;
 struct ltq_uart_port *ltq_port = to_ltq_uart_port(port);

 spin_lock_irqsave(&ltq_port->lock, flags);
 lqasc_tx_chars(port);
 spin_unlock_irqrestore(&ltq_port->lock, flags);
 return;
}
