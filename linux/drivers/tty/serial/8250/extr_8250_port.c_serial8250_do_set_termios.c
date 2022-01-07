
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int fifosize; int read_status_mask; int ignore_status_mask; int flags; scalar_t__ type; int lock; int mctrl; } ;
struct uart_8250_port {int capabilities; unsigned char lcr; int fcr; int ier; int bugs; int port; int mcr; scalar_t__ fifo_bug; int dma; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CMSPAR ;
 int CREAD ;
 int CRTSCTS ;
 int CS5 ;
 int CS6 ;
 int CS7 ;
 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 scalar_t__ PORT_16750 ;
 int UART_BUG_NOMSR ;
 int UART_CAP_AFE ;
 int UART_CAP_EFR ;
 int UART_CAP_FIFO ;
 int UART_CAP_MINI ;
 int UART_CAP_RTOIE ;
 int UART_CAP_UUE ;
 int UART_EFR ;
 unsigned char UART_EFR_CTS ;
 scalar_t__ UART_ENABLE_MS (int *,int) ;
 int UART_FCR ;
 int UART_FCR_ENABLE_FIFO ;
 int UART_FCR_TRIGGER_1 ;
 int UART_FCR_TRIGGER_MASK ;
 int UART_IER ;
 int UART_IER_MSI ;
 int UART_IER_RTOIE ;
 int UART_IER_UUE ;
 int UART_LCR ;
 int UART_LCR_CONF_MODE_B ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int UART_LSR_THRE ;
 int UART_MCR_AFE ;
 int UART_XR_EFR ;
 int UPF_EXAR_EFR ;
 unsigned char serial8250_compute_lcr (struct uart_8250_port*,int) ;
 unsigned int serial8250_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*) ;
 unsigned int serial8250_get_divisor (struct uart_port*,unsigned int,unsigned int*) ;
 int serial8250_rpm_get (struct uart_8250_port*) ;
 int serial8250_rpm_put (struct uart_8250_port*) ;
 int serial8250_set_divisor (struct uart_port*,unsigned int,unsigned int,unsigned int) ;
 int serial8250_set_mctrl (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

void
serial8250_do_set_termios(struct uart_port *port, struct ktermios *termios,
     struct ktermios *old)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 unsigned char cval;
 unsigned long flags;
 unsigned int baud, quot, frac = 0;

 if (up->capabilities & UART_CAP_MINI) {
  termios->c_cflag &= ~(CSTOPB | PARENB | PARODD | CMSPAR);
  if ((termios->c_cflag & CSIZE) == CS5 ||
      (termios->c_cflag & CSIZE) == CS6)
   termios->c_cflag = (termios->c_cflag & ~CSIZE) | CS7;
 }
 cval = serial8250_compute_lcr(up, termios->c_cflag);

 baud = serial8250_get_baud_rate(port, termios, old);
 quot = serial8250_get_divisor(port, baud, &frac);





 serial8250_rpm_get(up);
 spin_lock_irqsave(&port->lock, flags);

 up->lcr = cval;

 if (up->capabilities & UART_CAP_FIFO && port->fifosize > 1) {

  if ((baud < 2400 && !up->dma) || up->fifo_bug) {
   up->fcr &= ~UART_FCR_TRIGGER_MASK;
   up->fcr |= UART_FCR_TRIGGER_1;
  }
 }






 if (up->capabilities & UART_CAP_AFE) {
  up->mcr &= ~UART_MCR_AFE;
  if (termios->c_cflag & CRTSCTS)
   up->mcr |= UART_MCR_AFE;
 }




 uart_update_timeout(port, termios->c_cflag, baud);

 port->read_status_mask = UART_LSR_OE | UART_LSR_THRE | UART_LSR_DR;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= UART_LSR_FE | UART_LSR_PE;
 if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
  port->read_status_mask |= UART_LSR_BI;




 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= UART_LSR_PE | UART_LSR_FE;
 if (termios->c_iflag & IGNBRK) {
  port->ignore_status_mask |= UART_LSR_BI;




  if (termios->c_iflag & IGNPAR)
   port->ignore_status_mask |= UART_LSR_OE;
 }




 if ((termios->c_cflag & CREAD) == 0)
  port->ignore_status_mask |= UART_LSR_DR;




 up->ier &= ~UART_IER_MSI;
 if (!(up->bugs & UART_BUG_NOMSR) &&
   UART_ENABLE_MS(&up->port, termios->c_cflag))
  up->ier |= UART_IER_MSI;
 if (up->capabilities & UART_CAP_UUE)
  up->ier |= UART_IER_UUE;
 if (up->capabilities & UART_CAP_RTOIE)
  up->ier |= UART_IER_RTOIE;

 serial_port_out(port, UART_IER, up->ier);

 if (up->capabilities & UART_CAP_EFR) {
  unsigned char efr = 0;





  if (termios->c_cflag & CRTSCTS)
   efr |= UART_EFR_CTS;

  serial_port_out(port, UART_LCR, UART_LCR_CONF_MODE_B);
  if (port->flags & UPF_EXAR_EFR)
   serial_port_out(port, UART_XR_EFR, efr);
  else
   serial_port_out(port, UART_EFR, efr);
 }

 serial8250_set_divisor(port, baud, quot, frac);





 if (port->type == PORT_16750)
  serial_port_out(port, UART_FCR, up->fcr);

 serial_port_out(port, UART_LCR, up->lcr);
 if (port->type != PORT_16750) {

  if (up->fcr & UART_FCR_ENABLE_FIFO)
   serial_port_out(port, UART_FCR, UART_FCR_ENABLE_FIFO);
  serial_port_out(port, UART_FCR, up->fcr);
 }
 serial8250_set_mctrl(port, port->mctrl);
 spin_unlock_irqrestore(&port->lock, flags);
 serial8250_rpm_put(up);


 if (tty_termios_baud_rate(termios))
  tty_termios_encode_baud_rate(termios, baud, baud);
}
