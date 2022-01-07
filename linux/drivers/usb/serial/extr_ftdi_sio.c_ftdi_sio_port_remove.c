
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct ftdi_private {int dummy; } ;


 int ftdi_gpio_remove (struct usb_serial_port*) ;
 int kfree (struct ftdi_private*) ;
 int remove_sysfs_attrs (struct usb_serial_port*) ;
 struct ftdi_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int ftdi_sio_port_remove(struct usb_serial_port *port)
{
 struct ftdi_private *priv = usb_get_serial_port_data(port);

 ftdi_gpio_remove(port);

 remove_sysfs_attrs(port);

 kfree(priv);

 return 0;
}
