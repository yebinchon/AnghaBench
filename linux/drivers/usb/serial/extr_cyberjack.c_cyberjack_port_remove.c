
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; } ;
struct cyberjack_private {int dummy; } ;


 int kfree (struct cyberjack_private*) ;
 struct cyberjack_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int cyberjack_port_remove(struct usb_serial_port *port)
{
 struct cyberjack_private *priv;

 usb_kill_urb(port->interrupt_in_urb);

 priv = usb_get_serial_port_data(port);
 kfree(priv);

 return 0;
}
