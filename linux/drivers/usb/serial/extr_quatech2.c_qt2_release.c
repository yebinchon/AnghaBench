
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct qt2_serial_private {struct qt2_serial_private* read_buffer; int read_urb; } ;


 int kfree (struct qt2_serial_private*) ;
 int usb_free_urb (int ) ;
 struct qt2_serial_private* usb_get_serial_data (struct usb_serial*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void qt2_release(struct usb_serial *serial)
{
 struct qt2_serial_private *serial_priv;

 serial_priv = usb_get_serial_data(serial);

 usb_kill_urb(serial_priv->read_urb);
 usb_free_urb(serial_priv->read_urb);
 kfree(serial_priv->read_buffer);
 kfree(serial_priv);
}
