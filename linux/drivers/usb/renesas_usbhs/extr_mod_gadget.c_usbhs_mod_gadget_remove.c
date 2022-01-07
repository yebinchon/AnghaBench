
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_gpriv {struct usbhsg_gpriv* uep; int gadget; } ;
struct usbhs_priv {int dummy; } ;


 int kfree (struct usbhsg_gpriv*) ;
 int usb_del_gadget_udc (int *) ;
 struct usbhsg_gpriv* usbhsg_priv_to_gpriv (struct usbhs_priv*) ;

void usbhs_mod_gadget_remove(struct usbhs_priv *priv)
{
 struct usbhsg_gpriv *gpriv = usbhsg_priv_to_gpriv(priv);

 usb_del_gadget_udc(&gpriv->gadget);

 kfree(gpriv->uep);
 kfree(gpriv);
}
