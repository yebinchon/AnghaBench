
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int uartclk; int read_status_mask; int ignore_status_mask; int lock; int mctrl; } ;
struct uart_pxa_port {unsigned char ier; unsigned char lcr; TYPE_1__ port; int mcr; } ;
struct uart_port {int uartclk; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CREAD ;
 int CRTSCTS ;




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
 scalar_t__ UART_ENABLE_MS (TYPE_1__*,int) ;
 int UART_FCR ;
 unsigned char UART_FCR_ENABLE_FIFO ;
 unsigned char UART_FCR_PXAR1 ;
 unsigned char UART_FCR_PXAR32 ;
 unsigned char UART_FCR_PXAR8 ;
 int UART_IER ;
 unsigned char UART_IER_MSI ;
 unsigned char UART_IER_UUE ;
 int UART_LCR ;
 unsigned char UART_LCR_DLAB ;
 unsigned char UART_LCR_EPAR ;
 unsigned char UART_LCR_PARITY ;
 unsigned char UART_LCR_STOP ;
 unsigned char UART_LCR_WLEN5 ;
 unsigned char UART_LCR_WLEN6 ;
 unsigned char UART_LCR_WLEN7 ;
 unsigned char UART_LCR_WLEN8 ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int UART_LSR_THRE ;
 int UART_MCR_AFE ;
 int WARN_ON (int) ;
 unsigned int serial_in (struct uart_pxa_port*,int ) ;
 int serial_out (struct uart_pxa_port*,int ,unsigned char) ;
 int serial_pxa_set_mctrl (TYPE_1__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void
serial_pxa_set_termios(struct uart_port *port, struct ktermios *termios,
         struct ktermios *old)
{
 struct uart_pxa_port *up = (struct uart_pxa_port *)port;
 unsigned char cval, fcr = 0;
 unsigned long flags;
 unsigned int baud, quot;
 unsigned int dll;

 switch (termios->c_cflag & CSIZE) {
 case 131:
  cval = UART_LCR_WLEN5;
  break;
 case 130:
  cval = UART_LCR_WLEN6;
  break;
 case 129:
  cval = UART_LCR_WLEN7;
  break;
 default:
 case 128:
  cval = UART_LCR_WLEN8;
  break;
 }

 if (termios->c_cflag & CSTOPB)
  cval |= UART_LCR_STOP;
 if (termios->c_cflag & PARENB)
  cval |= UART_LCR_PARITY;
 if (!(termios->c_cflag & PARODD))
  cval |= UART_LCR_EPAR;




 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);
 quot = uart_get_divisor(port, baud);

 if ((up->port.uartclk / quot) < (2400 * 16))
  fcr = UART_FCR_ENABLE_FIFO | UART_FCR_PXAR1;
 else if ((up->port.uartclk / quot) < (230400 * 16))
  fcr = UART_FCR_ENABLE_FIFO | UART_FCR_PXAR8;
 else
  fcr = UART_FCR_ENABLE_FIFO | UART_FCR_PXAR32;





 spin_lock_irqsave(&up->port.lock, flags);





 up->ier |= UART_IER_UUE;




 uart_update_timeout(port, termios->c_cflag, baud);

 up->port.read_status_mask = UART_LSR_OE | UART_LSR_THRE | UART_LSR_DR;
 if (termios->c_iflag & INPCK)
  up->port.read_status_mask |= UART_LSR_FE | UART_LSR_PE;
 if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
  up->port.read_status_mask |= UART_LSR_BI;




 up->port.ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  up->port.ignore_status_mask |= UART_LSR_PE | UART_LSR_FE;
 if (termios->c_iflag & IGNBRK) {
  up->port.ignore_status_mask |= UART_LSR_BI;




  if (termios->c_iflag & IGNPAR)
   up->port.ignore_status_mask |= UART_LSR_OE;
 }




 if ((termios->c_cflag & CREAD) == 0)
  up->port.ignore_status_mask |= UART_LSR_DR;




 up->ier &= ~UART_IER_MSI;
 if (UART_ENABLE_MS(&up->port, termios->c_cflag))
  up->ier |= UART_IER_MSI;

 serial_out(up, UART_IER, up->ier);

 if (termios->c_cflag & CRTSCTS)
  up->mcr |= UART_MCR_AFE;
 else
  up->mcr &= ~UART_MCR_AFE;

 serial_out(up, UART_LCR, cval | UART_LCR_DLAB);
 serial_out(up, UART_DLL, quot & 0xff);





 dll = serial_in(up, UART_DLL);
 WARN_ON(dll != (quot & 0xff));

 serial_out(up, UART_DLM, quot >> 8);
 serial_out(up, UART_LCR, cval);
 up->lcr = cval;
 serial_pxa_set_mctrl(&up->port, up->port.mctrl);
 serial_out(up, UART_FCR, fcr);
 spin_unlock_irqrestore(&up->port.lock, flags);
}
