
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct moschip_port {unsigned int shadowMCR; unsigned int shadowMSR; } ;


 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RI ;
 unsigned int TIOCM_RTS ;
 unsigned int UART_MCR_DTR ;
 unsigned int UART_MCR_RTS ;
 unsigned int UART_MSR_CTS ;
 unsigned int UART_MSR_DCD ;
 unsigned int UART_MSR_DSR ;
 unsigned int UART_MSR_RI ;
 struct moschip_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int mos7720_tiocmget(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct moschip_port *mos7720_port = usb_get_serial_port_data(port);
 unsigned int result = 0;
 unsigned int mcr ;
 unsigned int msr ;

 mcr = mos7720_port->shadowMCR;
 msr = mos7720_port->shadowMSR;

 result = ((mcr & UART_MCR_DTR) ? TIOCM_DTR : 0)
   | ((mcr & UART_MCR_RTS) ? TIOCM_RTS : 0)
   | ((msr & UART_MSR_CTS) ? TIOCM_CTS : 0)
   | ((msr & UART_MSR_DCD) ? TIOCM_CAR : 0)
   | ((msr & UART_MSR_RI) ? TIOCM_RI : 0)
   | ((msr & UART_MSR_DSR) ? TIOCM_DSR : 0);

 return result;
}
