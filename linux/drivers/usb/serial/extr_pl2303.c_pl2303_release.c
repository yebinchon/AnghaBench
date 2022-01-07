
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct pl2303_serial_private {int dummy; } ;


 int kfree (struct pl2303_serial_private*) ;
 struct pl2303_serial_private* usb_get_serial_data (struct usb_serial*) ;

__attribute__((used)) static void pl2303_release(struct usb_serial *serial)
{
 struct pl2303_serial_private *spriv = usb_get_serial_data(serial);

 kfree(spriv);
}
