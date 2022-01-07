
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int dummy; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;


 int __usbhsg_recip_send_status (struct usbhsg_gpriv*,unsigned short) ;
 struct usbhsg_gpriv* usbhsg_uep_to_gpriv (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_recip_handler_std_get_interface(struct usbhs_priv *priv,
        struct usbhsg_uep *uep,
        struct usb_ctrlrequest *ctrl)
{
 struct usbhsg_gpriv *gpriv = usbhsg_uep_to_gpriv(uep);
 unsigned short status = 0;

 __usbhsg_recip_send_status(gpriv, status);

 return 0;
}
