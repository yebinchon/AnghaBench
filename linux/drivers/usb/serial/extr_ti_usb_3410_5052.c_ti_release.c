
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct ti_device {int dummy; } ;


 int kfree (struct ti_device*) ;
 struct ti_device* usb_get_serial_data (struct usb_serial*) ;

__attribute__((used)) static void ti_release(struct usb_serial *serial)
{
 struct ti_device *tdev = usb_get_serial_data(serial);

 kfree(tdev);
}
