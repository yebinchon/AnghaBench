
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int read_status_mask; int ignore_status_mask; int uartclk; scalar_t__ membase; } ;
struct ltq_uart_port {int lock; } ;
struct ktermios {unsigned int c_cflag; unsigned int c_iflag; } ;


 unsigned int ASCCON_BRS ;
 unsigned int ASCCON_FDE ;
 unsigned int ASCCON_FEN ;
 unsigned int ASCCON_M_7ASYNC ;
 unsigned int ASCCON_M_8ASYNC ;
 unsigned int ASCCON_ODD ;
 unsigned int ASCCON_R ;
 unsigned int ASCCON_ROEN ;
 unsigned int ASCCON_STP ;
 unsigned int ASCCON_TOEN ;
 int ASCSTATE_FE ;
 int ASCSTATE_PE ;
 int ASCSTATE_ROE ;
 unsigned int ASCWHBSTATE_SETREN ;
 unsigned int CMSPAR ;
 unsigned int CREAD ;



 unsigned int CS8 ;
 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 unsigned int IGNBRK ;
 unsigned int IGNPAR ;
 unsigned int INPCK ;
 scalar_t__ LTQ_ASC_BG ;
 scalar_t__ LTQ_ASC_CON ;
 scalar_t__ LTQ_ASC_WHBSTATE ;
 unsigned int PARENB ;
 unsigned int PARODD ;
 int UART_DUMMY_UER_RX ;
 int __raw_writel (unsigned int,scalar_t__) ;
 int asc_update_bits (unsigned int,unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ltq_uart_port* to_ltq_uart_port (struct uart_port*) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,unsigned int,unsigned int) ;

__attribute__((used)) static void
lqasc_set_termios(struct uart_port *port,
 struct ktermios *new, struct ktermios *old)
{
 unsigned int cflag;
 unsigned int iflag;
 unsigned int divisor;
 unsigned int baud;
 unsigned int con = 0;
 unsigned long flags;
 struct ltq_uart_port *ltq_port = to_ltq_uart_port(port);

 cflag = new->c_cflag;
 iflag = new->c_iflag;

 switch (cflag & CSIZE) {
 case 128:
  con = ASCCON_M_7ASYNC;
  break;

 case 130:
 case 129:
 default:
  new->c_cflag &= ~ CSIZE;
  new->c_cflag |= CS8;
  con = ASCCON_M_8ASYNC;
  break;
 }

 cflag &= ~CMSPAR;

 if (cflag & CSTOPB)
  con |= ASCCON_STP;

 if (cflag & PARENB) {
  if (!(cflag & PARODD))
   con &= ~ASCCON_ODD;
  else
   con |= ASCCON_ODD;
 }

 port->read_status_mask = ASCSTATE_ROE;
 if (iflag & INPCK)
  port->read_status_mask |= ASCSTATE_FE | ASCSTATE_PE;

 port->ignore_status_mask = 0;
 if (iflag & IGNPAR)
  port->ignore_status_mask |= ASCSTATE_FE | ASCSTATE_PE;

 if (iflag & IGNBRK) {




  if (iflag & IGNPAR)
   port->ignore_status_mask |= ASCSTATE_ROE;
 }

 if ((cflag & CREAD) == 0)
  port->ignore_status_mask |= UART_DUMMY_UER_RX;


 con |= ASCCON_FEN | ASCCON_TOEN | ASCCON_ROEN;

 spin_lock_irqsave(&ltq_port->lock, flags);


 asc_update_bits(0, con, port->membase + LTQ_ASC_CON);


 baud = uart_get_baud_rate(port, new, old, 0, port->uartclk / 16);
 divisor = uart_get_divisor(port, baud);
 divisor = divisor / 2 - 1;


 asc_update_bits(ASCCON_R, 0, port->membase + LTQ_ASC_CON);


 asc_update_bits(ASCCON_FDE, 0, port->membase + LTQ_ASC_CON);


 asc_update_bits(ASCCON_BRS, 0, port->membase + LTQ_ASC_CON);


 __raw_writel(divisor, port->membase + LTQ_ASC_BG);


 asc_update_bits(0, ASCCON_R, port->membase + LTQ_ASC_CON);


 __raw_writel(ASCWHBSTATE_SETREN, port->membase + LTQ_ASC_WHBSTATE);

 spin_unlock_irqrestore(&ltq_port->lock, flags);


 if (tty_termios_baud_rate(new))
  tty_termios_encode_baud_rate(new, baud, baud);

 uart_update_timeout(port, cflag, baud);
}
