
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int read_status_mask; int ignore_status_mask; int lock; } ;
struct ktermios {int c_iflag; int c_cflag; } ;


 int CREAD ;
 int IGNPAR ;
 int INPCK ;
 int ULITE_STATUS_FRAME ;
 int ULITE_STATUS_OVERRUN ;
 int ULITE_STATUS_PARITY ;
 int ULITE_STATUS_RXVALID ;
 int ULITE_STATUS_TXFULL ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void ulite_set_termios(struct uart_port *port, struct ktermios *termios,
         struct ktermios *old)
{
 unsigned long flags;
 unsigned int baud;

 spin_lock_irqsave(&port->lock, flags);

 port->read_status_mask = ULITE_STATUS_RXVALID | ULITE_STATUS_OVERRUN
  | ULITE_STATUS_TXFULL;

 if (termios->c_iflag & INPCK)
  port->read_status_mask |=
   ULITE_STATUS_PARITY | ULITE_STATUS_FRAME;

 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= ULITE_STATUS_PARITY
   | ULITE_STATUS_FRAME | ULITE_STATUS_OVERRUN;


 if ((termios->c_cflag & CREAD) == 0)
  port->ignore_status_mask |=
   ULITE_STATUS_RXVALID | ULITE_STATUS_PARITY
   | ULITE_STATUS_FRAME | ULITE_STATUS_OVERRUN;


 baud = uart_get_baud_rate(port, termios, old, 0, 460800);
 uart_update_timeout(port, termios->c_cflag, baud);

 spin_unlock_irqrestore(&port->lock, flags);
}
