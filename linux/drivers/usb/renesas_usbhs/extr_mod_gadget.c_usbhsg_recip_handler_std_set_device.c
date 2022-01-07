
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usb_ctrlrequest {int wIndex; int wValue; } ;



 int le16_to_cpu (int ) ;
 int udelay (int) ;
 int usbhs_sys_set_test_mode (struct usbhs_priv*,int) ;
 int usbhsg_recip_handler_std_control_done (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ;

__attribute__((used)) static int usbhsg_recip_handler_std_set_device(struct usbhs_priv *priv,
       struct usbhsg_uep *uep,
       struct usb_ctrlrequest *ctrl)
{
 switch (le16_to_cpu(ctrl->wValue)) {
 case 128:
  usbhsg_recip_handler_std_control_done(priv, uep, ctrl);
  udelay(100);
  usbhs_sys_set_test_mode(priv, le16_to_cpu(ctrl->wIndex) >> 8);
  break;
 default:
  usbhsg_recip_handler_std_control_done(priv, uep, ctrl);
  break;
 }

 return 0;
}
