
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int dummy; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;


 int USBHSG_STATUS_SELF_POWERED ;
 int USB_DEVICE_SELF_POWERED ;
 int __usbhsg_recip_send_status (struct usbhsg_gpriv*,unsigned short) ;
 scalar_t__ usbhsg_status_has (struct usbhsg_gpriv*,int ) ;
 struct usbhsg_gpriv* usbhsg_uep_to_gpriv (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_recip_handler_std_get_device(struct usbhs_priv *priv,
            struct usbhsg_uep *uep,
            struct usb_ctrlrequest *ctrl)
{
 struct usbhsg_gpriv *gpriv = usbhsg_uep_to_gpriv(uep);
 unsigned short status = 0;

 if (usbhsg_status_has(gpriv, USBHSG_STATUS_SELF_POWERED))
  status = 1 << USB_DEVICE_SELF_POWERED;

 __usbhsg_recip_send_status(gpriv, status);

 return 0;
}
