
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; int lock; int ignore_status_mask; } ;
struct rp2_uart_port {int dummy; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int CREAD ;
 int RP2_DUMMY_READ ;
 int __rp2_uart_set_termios (struct rp2_uart_port*,int,int ,unsigned int) ;
 struct rp2_uart_port* port_to_up (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void rp2_uart_set_termios(struct uart_port *port,
     struct ktermios *new,
     struct ktermios *old)
{
 struct rp2_uart_port *up = port_to_up(port);
 unsigned long flags;
 unsigned int baud, baud_div;

 baud = uart_get_baud_rate(port, new, old, 0, port->uartclk / 16);
 baud_div = uart_get_divisor(port, baud);

 if (tty_termios_baud_rate(new))
  tty_termios_encode_baud_rate(new, baud, baud);

 spin_lock_irqsave(&port->lock, flags);


 port->ignore_status_mask = (new->c_cflag & CREAD) ? 0 : RP2_DUMMY_READ;

 __rp2_uart_set_termios(up, new->c_cflag, new->c_iflag, baud_div);
 uart_update_timeout(port, new->c_cflag, baud);

 spin_unlock_irqrestore(&port->lock, flags);
}
