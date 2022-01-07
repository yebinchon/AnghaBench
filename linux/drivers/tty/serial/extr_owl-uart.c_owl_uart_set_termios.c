
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; int read_status_mask; } ;
struct owl_uart_port {int dummy; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int CMSPAR ;
 int CRTSCTS ;




 int CSIZE ;
 int CSTOPB ;
 int INPCK ;
 int OWL_UART_CTL ;
 int OWL_UART_CTL_AFE ;
 int OWL_UART_CTL_DWLS_5BITS ;
 int OWL_UART_CTL_DWLS_6BITS ;
 int OWL_UART_CTL_DWLS_7BITS ;
 int OWL_UART_CTL_DWLS_8BITS ;
 int OWL_UART_CTL_DWLS_MASK ;
 int OWL_UART_CTL_PRS_EVEN ;
 int OWL_UART_CTL_PRS_MARK ;
 int OWL_UART_CTL_PRS_MASK ;
 int OWL_UART_CTL_PRS_NONE ;
 int OWL_UART_CTL_PRS_ODD ;
 int OWL_UART_CTL_PRS_SPACE ;
 int OWL_UART_CTL_STPS_2BITS ;
 int OWL_UART_STAT_RXER ;
 int OWL_UART_STAT_RXST ;
 int PARENB ;
 int PARODD ;
 int owl_uart_change_baudrate (struct owl_uart_port*,unsigned int) ;
 int owl_uart_read (struct uart_port*,int ) ;
 int owl_uart_write (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct owl_uart_port* to_owl_uart_port (struct uart_port*) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void owl_uart_set_termios(struct uart_port *port,
     struct ktermios *termios,
     struct ktermios *old)
{
 struct owl_uart_port *owl_port = to_owl_uart_port(port);
 unsigned int baud;
 u32 ctl;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 ctl = owl_uart_read(port, OWL_UART_CTL);

 ctl &= ~OWL_UART_CTL_DWLS_MASK;
 switch (termios->c_cflag & CSIZE) {
 case 131:
  ctl |= OWL_UART_CTL_DWLS_5BITS;
  break;
 case 130:
  ctl |= OWL_UART_CTL_DWLS_6BITS;
  break;
 case 129:
  ctl |= OWL_UART_CTL_DWLS_7BITS;
  break;
 case 128:
 default:
  ctl |= OWL_UART_CTL_DWLS_8BITS;
  break;
 }

 if (termios->c_cflag & CSTOPB)
  ctl |= OWL_UART_CTL_STPS_2BITS;
 else
  ctl &= ~OWL_UART_CTL_STPS_2BITS;

 ctl &= ~OWL_UART_CTL_PRS_MASK;
 if (termios->c_cflag & PARENB) {
  if (termios->c_cflag & CMSPAR) {
   if (termios->c_cflag & PARODD)
    ctl |= OWL_UART_CTL_PRS_MARK;
   else
    ctl |= OWL_UART_CTL_PRS_SPACE;
  } else if (termios->c_cflag & PARODD)
   ctl |= OWL_UART_CTL_PRS_ODD;
  else
   ctl |= OWL_UART_CTL_PRS_EVEN;
 } else
  ctl |= OWL_UART_CTL_PRS_NONE;

 if (termios->c_cflag & CRTSCTS)
  ctl |= OWL_UART_CTL_AFE;
 else
  ctl &= ~OWL_UART_CTL_AFE;

 owl_uart_write(port, ctl, OWL_UART_CTL);

 baud = uart_get_baud_rate(port, termios, old, 9600, 3200000);
 owl_uart_change_baudrate(owl_port, baud);


 if (tty_termios_baud_rate(termios))
  tty_termios_encode_baud_rate(termios, baud, baud);

 port->read_status_mask |= OWL_UART_STAT_RXER;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= OWL_UART_STAT_RXST;

 uart_update_timeout(port, termios->c_cflag, baud);

 spin_unlock_irqrestore(&port->lock, flags);
}
