
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct edgeport_port {unsigned int shadowMSR; unsigned int shadowMCR; } ;


 unsigned int EDGEPORT_MSR_CD ;
 unsigned int EDGEPORT_MSR_CTS ;
 unsigned int EDGEPORT_MSR_DSR ;
 unsigned int EDGEPORT_MSR_RI ;
 unsigned int MCR_DTR ;
 unsigned int MCR_RTS ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RI ;
 unsigned int TIOCM_RTS ;
 struct edgeport_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int edge_tiocmget(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct edgeport_port *edge_port = usb_get_serial_port_data(port);
 unsigned int result = 0;
 unsigned int msr;
 unsigned int mcr;

 msr = edge_port->shadowMSR;
 mcr = edge_port->shadowMCR;
 result = ((mcr & MCR_DTR) ? TIOCM_DTR: 0)
    | ((mcr & MCR_RTS) ? TIOCM_RTS: 0)
    | ((msr & EDGEPORT_MSR_CTS) ? TIOCM_CTS: 0)
    | ((msr & EDGEPORT_MSR_CD) ? TIOCM_CAR: 0)
    | ((msr & EDGEPORT_MSR_RI) ? TIOCM_RI: 0)
    | ((msr & EDGEPORT_MSR_DSR) ? TIOCM_DSR: 0);

 return result;
}
