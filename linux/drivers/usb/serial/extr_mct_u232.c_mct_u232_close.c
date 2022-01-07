
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; } ;
struct mct_u232_private {int read_urb; } ;


 struct mct_u232_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_urb (int ) ;
 int usb_serial_generic_close (struct usb_serial_port*) ;

__attribute__((used)) static void mct_u232_close(struct usb_serial_port *port)
{
 struct mct_u232_private *priv = usb_get_serial_port_data(port);

 usb_kill_urb(priv->read_urb);
 usb_kill_urb(port->interrupt_in_urb);

 usb_serial_generic_close(port);
}
