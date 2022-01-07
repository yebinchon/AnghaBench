
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int read_status_mask; int ignore_status_mask; int lock; } ;
struct ktermios {int c_iflag; int c_cflag; } ;


 int CBAUD ;
 int CREAD ;
 int CS8 ;
 int IGNPAR ;
 int INPCK ;
 int STAT_BRK_ERR ;
 int STAT_FRM_ERR ;
 int STAT_OVR_ERR ;
 int STAT_PAR_ERR ;
 int STAT_RX_RDY (struct uart_port*) ;
 int STAT_TX_FIFO_FUL ;
 int STAT_TX_RDY (struct uart_port*) ;
 scalar_t__ mvebu_uart_baud_rate_set (struct uart_port*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void mvebu_uart_set_termios(struct uart_port *port,
       struct ktermios *termios,
       struct ktermios *old)
{
 unsigned long flags;
 unsigned int baud;

 spin_lock_irqsave(&port->lock, flags);

 port->read_status_mask = STAT_RX_RDY(port) | STAT_OVR_ERR |
  STAT_TX_RDY(port) | STAT_TX_FIFO_FUL;

 if (termios->c_iflag & INPCK)
  port->read_status_mask |= STAT_FRM_ERR | STAT_PAR_ERR;

 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |=
   STAT_FRM_ERR | STAT_PAR_ERR | STAT_OVR_ERR;

 if ((termios->c_cflag & CREAD) == 0)
  port->ignore_status_mask |= STAT_RX_RDY(port) | STAT_BRK_ERR;







 baud = uart_get_baud_rate(port, termios, old, 0, 230400);
 if (mvebu_uart_baud_rate_set(port, baud)) {

  if (old)
   baud = uart_get_baud_rate(port, old, ((void*)0), 0, 230400);
 } else {
  tty_termios_encode_baud_rate(termios, baud, baud);
  uart_update_timeout(port, termios->c_cflag, baud);
 }


 if (old) {
  termios->c_iflag &= INPCK | IGNPAR;
  termios->c_iflag |= old->c_iflag & ~(INPCK | IGNPAR);
  termios->c_cflag &= CREAD | CBAUD;
  termios->c_cflag |= old->c_cflag & ~(CREAD | CBAUD);
  termios->c_cflag |= CS8;
 }

 spin_unlock_irqrestore(&port->lock, flags);
}
