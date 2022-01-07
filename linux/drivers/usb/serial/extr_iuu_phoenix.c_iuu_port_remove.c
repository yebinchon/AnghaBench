
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct iuu_private {struct iuu_private* buf; struct iuu_private* writebuf; } ;


 int iuu_remove_sysfs_attrs (struct usb_serial_port*) ;
 int kfree (struct iuu_private*) ;
 struct iuu_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int iuu_port_remove(struct usb_serial_port *port)
{
 struct iuu_private *priv = usb_get_serial_port_data(port);

 iuu_remove_sysfs_attrs(port);
 kfree(priv->writebuf);
 kfree(priv->buf);
 kfree(priv);

 return 0;
}
