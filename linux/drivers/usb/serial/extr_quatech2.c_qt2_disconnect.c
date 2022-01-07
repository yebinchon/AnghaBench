
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct qt2_serial_private {int read_urb; } ;


 struct qt2_serial_private* usb_get_serial_data (struct usb_serial*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void qt2_disconnect(struct usb_serial *serial)
{
 struct qt2_serial_private *serial_priv = usb_get_serial_data(serial);

 usb_kill_urb(serial_priv->read_urb);
}
