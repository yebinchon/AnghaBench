
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_gpriv {int dummy; } ;
struct usb_gadget {int is_selfpowered; } ;


 int USBHSG_STATUS_SELF_POWERED ;
 struct usbhsg_gpriv* usbhsg_gadget_to_gpriv (struct usb_gadget*) ;
 int usbhsg_status_clr (struct usbhsg_gpriv*,int ) ;
 int usbhsg_status_set (struct usbhsg_gpriv*,int ) ;

__attribute__((used)) static int usbhsg_set_selfpowered(struct usb_gadget *gadget, int is_self)
{
 struct usbhsg_gpriv *gpriv = usbhsg_gadget_to_gpriv(gadget);

 if (is_self)
  usbhsg_status_set(gpriv, USBHSG_STATUS_SELF_POWERED);
 else
  usbhsg_status_clr(gpriv, USBHSG_STATUS_SELF_POWERED);

 gadget->is_selfpowered = (is_self != 0);

 return 0;
}
