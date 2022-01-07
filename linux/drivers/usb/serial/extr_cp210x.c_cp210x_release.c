
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct cp210x_serial_private {int dummy; } ;


 int cp210x_gpio_remove (struct usb_serial*) ;
 int kfree (struct cp210x_serial_private*) ;
 struct cp210x_serial_private* usb_get_serial_data (struct usb_serial*) ;

__attribute__((used)) static void cp210x_release(struct usb_serial *serial)
{
 struct cp210x_serial_private *priv = usb_get_serial_data(serial);

 cp210x_gpio_remove(serial);

 kfree(priv);
}
