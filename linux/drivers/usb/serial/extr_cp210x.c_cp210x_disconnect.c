
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;


 int cp210x_gpio_remove (struct usb_serial*) ;

__attribute__((used)) static void cp210x_disconnect(struct usb_serial *serial)
{
 cp210x_gpio_remove(serial);
}
