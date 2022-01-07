
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_gadget {int dummy; } ;


 int USBHSG_STATUS_SOFT_CONNECT ;
 int usbhs_lock (struct usbhs_priv*,unsigned long) ;
 int usbhs_unlock (struct usbhs_priv*,unsigned long) ;
 struct usbhsg_gpriv* usbhsg_gadget_to_gpriv (struct usb_gadget*) ;
 struct usbhs_priv* usbhsg_gpriv_to_priv (struct usbhsg_gpriv*) ;
 int usbhsg_status_clr (struct usbhsg_gpriv*,int ) ;
 int usbhsg_status_set (struct usbhsg_gpriv*,int ) ;
 int usbhsg_update_pullup (struct usbhs_priv*) ;

__attribute__((used)) static int usbhsg_pullup(struct usb_gadget *gadget, int is_on)
{
 struct usbhsg_gpriv *gpriv = usbhsg_gadget_to_gpriv(gadget);
 struct usbhs_priv *priv = usbhsg_gpriv_to_priv(gpriv);
 unsigned long flags;

 usbhs_lock(priv, flags);
 if (is_on)
  usbhsg_status_set(gpriv, USBHSG_STATUS_SOFT_CONNECT);
 else
  usbhsg_status_clr(gpriv, USBHSG_STATUS_SOFT_CONNECT);
 usbhsg_update_pullup(priv);
 usbhs_unlock(priv, flags);

 return 0;
}
