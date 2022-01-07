
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct cp210x_port_private {int dummy; } ;


 int kfree (struct cp210x_port_private*) ;
 struct cp210x_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int cp210x_port_remove(struct usb_serial_port *port)
{
 struct cp210x_port_private *port_priv;

 port_priv = usb_get_serial_port_data(port);
 kfree(port_priv);

 return 0;
}
