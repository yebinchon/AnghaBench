
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct sierra_intf_private {int dummy; } ;


 int kfree (struct sierra_intf_private*) ;
 struct sierra_intf_private* usb_get_serial_data (struct usb_serial*) ;

__attribute__((used)) static void sierra_release(struct usb_serial *serial)
{
 struct sierra_intf_private *intfdata;

 intfdata = usb_get_serial_data(serial);
 kfree(intfdata);
}
