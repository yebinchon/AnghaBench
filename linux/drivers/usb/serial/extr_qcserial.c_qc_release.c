
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_wwan_intf_private {int dummy; } ;
struct usb_serial {int dummy; } ;


 int kfree (struct usb_wwan_intf_private*) ;
 struct usb_wwan_intf_private* usb_get_serial_data (struct usb_serial*) ;
 int usb_set_serial_data (struct usb_serial*,int *) ;

__attribute__((used)) static void qc_release(struct usb_serial *serial)
{
 struct usb_wwan_intf_private *priv = usb_get_serial_data(serial);

 usb_set_serial_data(serial, ((void*)0));
 kfree(priv);
}
