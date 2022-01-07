
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_status_mask; int ignore_status_mask; int flags; int lock; int mctrl; } ;
struct uart_txx9_port {TYPE_1__ port; } ;
struct uart_port {int uartclk; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CLOCAL ;
 int CMSPAR ;
 int CREAD ;
 int CRTSCTS ;




 int CSIZE ;
 int CSTOPB ;
 int HUPCL ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int TXX9_SIDISR_RDIS ;
 int TXX9_SIDISR_TDIS ;
 int TXX9_SIDISR_UBRK ;
 int TXX9_SIDISR_UFER ;
 int TXX9_SIDISR_UOER ;
 int TXX9_SIDISR_UPER ;
 int TXX9_SIFCR ;
 unsigned int TXX9_SIFCR_RDIL_1 ;
 unsigned int TXX9_SIFCR_TDIL_MAX ;
 int TXX9_SIFLCR ;
 int TXX9_SIFLCR_RCS ;
 int TXX9_SIFLCR_TES ;
 int TXX9_SILCR ;
 unsigned int TXX9_SILCR_UEPS ;
 unsigned int TXX9_SILCR_UMODE_7BIT ;
 unsigned int TXX9_SILCR_UMODE_8BIT ;
 unsigned int TXX9_SILCR_UMODE_MASK ;
 unsigned int TXX9_SILCR_UPEN ;
 unsigned int TXX9_SILCR_USBL_1BIT ;
 unsigned int TXX9_SILCR_USBL_2BIT ;
 unsigned int TXX9_SILCR_USBL_MASK ;
 int UPF_TXX9_HAVE_CTS_LINE ;
 int serial_txx9_set_mctrl (TYPE_1__*,int ) ;
 unsigned int sio_in (struct uart_txx9_port*,int ) ;
 int sio_mask (struct uart_txx9_port*,int ,int) ;
 int sio_out (struct uart_txx9_port*,int ,unsigned int) ;
 int sio_quot_set (struct uart_txx9_port*,unsigned int) ;
 int sio_set (struct uart_txx9_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_txx9_port* to_uart_txx9_port (struct uart_port*) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void
serial_txx9_set_termios(struct uart_port *port, struct ktermios *termios,
         struct ktermios *old)
{
 struct uart_txx9_port *up = to_uart_txx9_port(port);
 unsigned int cval, fcr = 0;
 unsigned long flags;
 unsigned int baud, quot;




 termios->c_cflag &= ~(HUPCL | CMSPAR);
 termios->c_cflag |= CLOCAL;

 cval = sio_in(up, TXX9_SILCR);

 cval &= ~TXX9_SILCR_UMODE_MASK;
 switch (termios->c_cflag & CSIZE) {
 case 129:
  cval |= TXX9_SILCR_UMODE_7BIT;
  break;
 default:
 case 131:
 case 130:
 case 128:
  cval |= TXX9_SILCR_UMODE_8BIT;
  break;
 }

 cval &= ~TXX9_SILCR_USBL_MASK;
 if (termios->c_cflag & CSTOPB)
  cval |= TXX9_SILCR_USBL_2BIT;
 else
  cval |= TXX9_SILCR_USBL_1BIT;
 cval &= ~(TXX9_SILCR_UPEN | TXX9_SILCR_UEPS);
 if (termios->c_cflag & PARENB)
  cval |= TXX9_SILCR_UPEN;
 if (!(termios->c_cflag & PARODD))
  cval |= TXX9_SILCR_UEPS;




 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16/2);
 quot = uart_get_divisor(port, baud);



 fcr = TXX9_SIFCR_TDIL_MAX | TXX9_SIFCR_RDIL_1;





 spin_lock_irqsave(&up->port.lock, flags);




 uart_update_timeout(port, termios->c_cflag, baud);

 up->port.read_status_mask = TXX9_SIDISR_UOER |
  TXX9_SIDISR_TDIS | TXX9_SIDISR_RDIS;
 if (termios->c_iflag & INPCK)
  up->port.read_status_mask |= TXX9_SIDISR_UFER | TXX9_SIDISR_UPER;
 if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
  up->port.read_status_mask |= TXX9_SIDISR_UBRK;




 up->port.ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  up->port.ignore_status_mask |= TXX9_SIDISR_UPER | TXX9_SIDISR_UFER;
 if (termios->c_iflag & IGNBRK) {
  up->port.ignore_status_mask |= TXX9_SIDISR_UBRK;




  if (termios->c_iflag & IGNPAR)
   up->port.ignore_status_mask |= TXX9_SIDISR_UOER;
 }




 if ((termios->c_cflag & CREAD) == 0)
  up->port.ignore_status_mask |= TXX9_SIDISR_RDIS;


 if ((termios->c_cflag & CRTSCTS) &&
     (up->port.flags & UPF_TXX9_HAVE_CTS_LINE)) {
  sio_set(up, TXX9_SIFLCR,
   TXX9_SIFLCR_RCS | TXX9_SIFLCR_TES);
 } else {
  sio_mask(up, TXX9_SIFLCR,
    TXX9_SIFLCR_RCS | TXX9_SIFLCR_TES);
 }

 sio_out(up, TXX9_SILCR, cval);
 sio_quot_set(up, quot);
 sio_out(up, TXX9_SIFCR, fcr);

 serial_txx9_set_mctrl(&up->port, up->port.mctrl);
 spin_unlock_irqrestore(&up->port.lock, flags);
}
