
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_gadget {int dummy; } ;


 int usbhs_frame_get_num (struct usbhs_priv*) ;
 struct usbhsg_gpriv* usbhsg_gadget_to_gpriv (struct usb_gadget*) ;
 struct usbhs_priv* usbhsg_gpriv_to_priv (struct usbhsg_gpriv*) ;

__attribute__((used)) static int usbhsg_get_frame(struct usb_gadget *gadget)
{
 struct usbhsg_gpriv *gpriv = usbhsg_gadget_to_gpriv(gadget);
 struct usbhs_priv *priv = usbhsg_gpriv_to_priv(gpriv);

 return usbhs_frame_get_num(priv);
}
