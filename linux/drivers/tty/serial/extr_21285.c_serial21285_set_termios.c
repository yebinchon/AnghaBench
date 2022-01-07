
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; int read_status_mask; int ignore_status_mask; int lock; scalar_t__ fifosize; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CLOCAL ;
 int CMSPAR ;
 int CREAD ;
 int CRTSCTS ;



 int CSIZE ;
 unsigned int* CSR_H_UBRLCR ;
 unsigned int* CSR_L_UBRLCR ;
 unsigned int* CSR_M_UBRLCR ;
 int* CSR_UARTCON ;
 int CSTOPB ;
 int HUPCL ;
 unsigned int H_UBRLCR_FIFO ;
 unsigned int H_UBRLCR_PARENB ;
 unsigned int H_UBRLCR_PAREVN ;
 unsigned int H_UBRLCR_STOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARODD ;
 int RXSTAT_DUMMY_READ ;
 int RXSTAT_FRAME ;
 int RXSTAT_OVERRUN ;
 int RXSTAT_PARITY ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void
serial21285_set_termios(struct uart_port *port, struct ktermios *termios,
   struct ktermios *old)
{
 unsigned long flags;
 unsigned int baud, quot, h_lcr, b;




 termios->c_cflag &= ~(HUPCL | CRTSCTS | CMSPAR);
 termios->c_cflag |= CLOCAL;




 termios->c_iflag &= ~(IGNBRK | BRKINT);




 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);
 quot = uart_get_divisor(port, baud);
 b = port->uartclk / (16 * quot);
 tty_termios_encode_baud_rate(termios, b, b);

 switch (termios->c_cflag & CSIZE) {
 case 130:
  h_lcr = 0x00;
  break;
 case 129:
  h_lcr = 0x20;
  break;
 case 128:
  h_lcr = 0x40;
  break;
 default:
  h_lcr = 0x60;
  break;
 }

 if (termios->c_cflag & CSTOPB)
  h_lcr |= H_UBRLCR_STOPB;
 if (termios->c_cflag & PARENB) {
  h_lcr |= H_UBRLCR_PARENB;
  if (!(termios->c_cflag & PARODD))
   h_lcr |= H_UBRLCR_PAREVN;
 }

 if (port->fifosize)
  h_lcr |= H_UBRLCR_FIFO;

 spin_lock_irqsave(&port->lock, flags);




 uart_update_timeout(port, termios->c_cflag, baud);




 port->read_status_mask = RXSTAT_OVERRUN;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= RXSTAT_FRAME | RXSTAT_PARITY;




 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= RXSTAT_FRAME | RXSTAT_PARITY;
 if (termios->c_iflag & IGNBRK && termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= RXSTAT_OVERRUN;




 if ((termios->c_cflag & CREAD) == 0)
  port->ignore_status_mask |= RXSTAT_DUMMY_READ;

 quot -= 1;

 *CSR_UARTCON = 0;
 *CSR_L_UBRLCR = quot & 0xff;
 *CSR_M_UBRLCR = (quot >> 8) & 0x0f;
 *CSR_H_UBRLCR = h_lcr;
 *CSR_UARTCON = 1;

 spin_unlock_irqrestore(&port->lock, flags);
}
