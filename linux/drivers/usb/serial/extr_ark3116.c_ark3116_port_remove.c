
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct ark3116_private {int hw_lock; } ;


 int kfree (struct ark3116_private*) ;
 int mutex_destroy (int *) ;
 struct ark3116_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int ark3116_port_remove(struct usb_serial_port *port)
{
 struct ark3116_private *priv = usb_get_serial_port_data(port);


 mutex_destroy(&priv->hw_lock);
 kfree(priv);

 return 0;
}
