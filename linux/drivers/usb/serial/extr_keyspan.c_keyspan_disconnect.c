
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct keyspan_serial_private {int indat_urb; int glocont_urb; int instat_urb; } ;


 struct keyspan_serial_private* usb_get_serial_data (struct usb_serial*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void keyspan_disconnect(struct usb_serial *serial)
{
 struct keyspan_serial_private *s_priv;

 s_priv = usb_get_serial_data(serial);

 usb_kill_urb(s_priv->instat_urb);
 usb_kill_urb(s_priv->glocont_urb);
 usb_kill_urb(s_priv->indat_urb);
}
