
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct qt2_port_private {struct qt2_port_private* write_buffer; int write_urb; } ;


 int kfree (struct qt2_port_private*) ;
 int usb_free_urb (int ) ;
 struct qt2_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int qt2_port_remove(struct usb_serial_port *port)
{
 struct qt2_port_private *port_priv;

 port_priv = usb_get_serial_port_data(port);
 usb_free_urb(port_priv->write_urb);
 kfree(port_priv->write_buffer);
 kfree(port_priv);

 return 0;
}
