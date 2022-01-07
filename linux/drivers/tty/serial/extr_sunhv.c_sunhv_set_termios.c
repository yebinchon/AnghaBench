
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; int lock; int ignore_status_mask; } ;
struct ktermios {unsigned int c_iflag; unsigned int c_cflag; } ;


 unsigned int CREAD ;
 unsigned int IGNBRK ;
 int IGNORE_ALL ;
 int IGNORE_BREAK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,unsigned int,int) ;

__attribute__((used)) static void sunhv_set_termios(struct uart_port *port, struct ktermios *termios,
         struct ktermios *old)
{
 unsigned int baud = uart_get_baud_rate(port, termios, old, 0, 4000000);
 unsigned int quot = uart_get_divisor(port, baud);
 unsigned int iflag, cflag;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 iflag = termios->c_iflag;
 cflag = termios->c_cflag;

 port->ignore_status_mask = 0;
 if (iflag & IGNBRK)
  port->ignore_status_mask |= IGNORE_BREAK;
 if ((cflag & CREAD) == 0)
  port->ignore_status_mask |= IGNORE_ALL;


 uart_update_timeout(port, cflag,
       (port->uartclk / (16 * quot)));

 spin_unlock_irqrestore(&port->lock, flags);
}
