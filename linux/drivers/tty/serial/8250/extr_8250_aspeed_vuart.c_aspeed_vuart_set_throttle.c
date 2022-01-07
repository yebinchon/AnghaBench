
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct uart_8250_port {int dummy; } ;


 int __aspeed_vuart_set_throttle (struct uart_8250_port*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void aspeed_vuart_set_throttle(struct uart_port *port, bool throttle)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 __aspeed_vuart_set_throttle(up, throttle);
 spin_unlock_irqrestore(&port->lock, flags);
}
