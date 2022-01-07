
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct keyspan_port_private {struct keyspan_port_private** in_buffer; struct keyspan_port_private** out_buffer; struct keyspan_port_private* inack_buffer; struct keyspan_port_private* outcont_buffer; int * out_urbs; int * in_urbs; int outcont_urb; int inack_urb; } ;


 int ARRAY_SIZE (struct keyspan_port_private**) ;
 int kfree (struct keyspan_port_private*) ;
 int usb_free_urb (int ) ;
 struct keyspan_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int keyspan_port_remove(struct usb_serial_port *port)
{
 struct keyspan_port_private *p_priv;
 int i;

 p_priv = usb_get_serial_port_data(port);

 usb_kill_urb(p_priv->inack_urb);
 usb_kill_urb(p_priv->outcont_urb);
 for (i = 0; i < 2; i++) {
  usb_kill_urb(p_priv->in_urbs[i]);
  usb_kill_urb(p_priv->out_urbs[i]);
 }

 usb_free_urb(p_priv->inack_urb);
 usb_free_urb(p_priv->outcont_urb);
 for (i = 0; i < 2; i++) {
  usb_free_urb(p_priv->in_urbs[i]);
  usb_free_urb(p_priv->out_urbs[i]);
 }

 kfree(p_priv->outcont_buffer);
 kfree(p_priv->inack_buffer);
 for (i = 0; i < ARRAY_SIZE(p_priv->out_buffer); ++i)
  kfree(p_priv->out_buffer[i]);
 for (i = 0; i < ARRAY_SIZE(p_priv->in_buffer); ++i)
  kfree(p_priv->in_buffer[i]);

 kfree(p_priv);

 return 0;
}
