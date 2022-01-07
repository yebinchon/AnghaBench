
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_wwan_port_private {int rts_state; int dtr_state; } ;
struct usb_wwan_intf_private {int use_send_setup; } ;
struct usb_serial_port {int serial; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int EINVAL ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 struct usb_wwan_intf_private* usb_get_serial_data (int ) ;
 struct usb_wwan_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_wwan_send_setup (struct usb_serial_port*) ;

int usb_wwan_tiocmset(struct tty_struct *tty,
        unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct usb_wwan_port_private *portdata;
 struct usb_wwan_intf_private *intfdata;

 portdata = usb_get_serial_port_data(port);
 intfdata = usb_get_serial_data(port->serial);

 if (!intfdata->use_send_setup)
  return -EINVAL;


 if (set & TIOCM_RTS)
  portdata->rts_state = 1;
 if (set & TIOCM_DTR)
  portdata->dtr_state = 1;

 if (clear & TIOCM_RTS)
  portdata->rts_state = 0;
 if (clear & TIOCM_DTR)
  portdata->dtr_state = 0;
 return usb_wwan_send_setup(port);
}
