
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct keyspan_serial_private {struct keyspan_serial_private* instat_buf; struct keyspan_serial_private* indat_buf; struct keyspan_serial_private* glocont_buf; struct keyspan_serial_private* ctrl_buf; int glocont_urb; int indat_urb; int instat_urb; } ;


 int kfree (struct keyspan_serial_private*) ;
 int usb_free_urb (int ) ;
 struct keyspan_serial_private* usb_get_serial_data (struct usb_serial*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void keyspan_release(struct usb_serial *serial)
{
 struct keyspan_serial_private *s_priv;

 s_priv = usb_get_serial_data(serial);


 usb_kill_urb(s_priv->instat_urb);
 usb_kill_urb(s_priv->indat_urb);

 usb_free_urb(s_priv->instat_urb);
 usb_free_urb(s_priv->indat_urb);
 usb_free_urb(s_priv->glocont_urb);

 kfree(s_priv->ctrl_buf);
 kfree(s_priv->glocont_buf);
 kfree(s_priv->indat_buf);
 kfree(s_priv->instat_buf);

 kfree(s_priv);
}
