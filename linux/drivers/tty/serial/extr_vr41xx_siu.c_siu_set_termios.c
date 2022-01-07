
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tcflag_t ;
struct uart_port {int uartclk; int read_status_mask; int ignore_status_mask; int lock; int mctrl; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CMSPAR ;
 int CREAD ;



 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int UART_DLL ;
 int UART_DLM ;
 scalar_t__ UART_ENABLE_MS (struct uart_port*,int) ;
 int UART_FCR ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_FCR_R_TRIG_10 ;
 int UART_IER ;
 int UART_IER_MSI ;
 int UART_LCR ;
 int UART_LCR_DLAB ;
 int UART_LCR_EPAR ;
 int UART_LCR_PARITY ;
 int UART_LCR_SPAR ;
 int UART_LCR_STOP ;
 int UART_LCR_WLEN5 ;
 int UART_LCR_WLEN6 ;
 int UART_LCR_WLEN7 ;
 int UART_LCR_WLEN8 ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int UART_LSR_THRE ;
 int siu_read (struct uart_port*,int ) ;
 int siu_set_mctrl (struct uart_port*,int ) ;
 int siu_write (struct uart_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void siu_set_termios(struct uart_port *port, struct ktermios *new,
                            struct ktermios *old)
{
 tcflag_t c_cflag, c_iflag;
 uint8_t lcr, fcr, ier;
 unsigned int baud, quot;
 unsigned long flags;

 c_cflag = new->c_cflag;
 switch (c_cflag & CSIZE) {
 case 130:
  lcr = UART_LCR_WLEN5;
  break;
 case 129:
  lcr = UART_LCR_WLEN6;
  break;
 case 128:
  lcr = UART_LCR_WLEN7;
  break;
 default:
  lcr = UART_LCR_WLEN8;
  break;
 }

 if (c_cflag & CSTOPB)
  lcr |= UART_LCR_STOP;
 if (c_cflag & PARENB)
  lcr |= UART_LCR_PARITY;
 if ((c_cflag & PARODD) != PARODD)
  lcr |= UART_LCR_EPAR;
 if (c_cflag & CMSPAR)
  lcr |= UART_LCR_SPAR;

 baud = uart_get_baud_rate(port, new, old, 0, port->uartclk/16);
 quot = uart_get_divisor(port, baud);

 fcr = UART_FCR_ENABLE_FIFO | UART_FCR_R_TRIG_10;

 spin_lock_irqsave(&port->lock, flags);

 uart_update_timeout(port, c_cflag, baud);

 c_iflag = new->c_iflag;

 port->read_status_mask = UART_LSR_THRE | UART_LSR_OE | UART_LSR_DR;
 if (c_iflag & INPCK)
  port->read_status_mask |= UART_LSR_FE | UART_LSR_PE;
 if (c_iflag & (IGNBRK | BRKINT | PARMRK))
  port->read_status_mask |= UART_LSR_BI;

 port->ignore_status_mask = 0;
 if (c_iflag & IGNPAR)
  port->ignore_status_mask |= UART_LSR_FE | UART_LSR_PE;
 if (c_iflag & IGNBRK) {
  port->ignore_status_mask |= UART_LSR_BI;
  if (c_iflag & IGNPAR)
   port->ignore_status_mask |= UART_LSR_OE;
 }

 if ((c_cflag & CREAD) == 0)
  port->ignore_status_mask |= UART_LSR_DR;

 ier = siu_read(port, UART_IER);
 ier &= ~UART_IER_MSI;
 if (UART_ENABLE_MS(port, c_cflag))
  ier |= UART_IER_MSI;
 siu_write(port, UART_IER, ier);

 siu_write(port, UART_LCR, lcr | UART_LCR_DLAB);

 siu_write(port, UART_DLL, (uint8_t)quot);
 siu_write(port, UART_DLM, (uint8_t)(quot >> 8));

 siu_write(port, UART_LCR, lcr);

 siu_write(port, UART_FCR, fcr);

 siu_set_mctrl(port, port->mctrl);

 spin_unlock_irqrestore(&port->lock, flags);
}
