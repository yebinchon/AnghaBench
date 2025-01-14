
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int dummy; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;


 int USB_ENDPOINT_HALT ;
 int __usbhsg_recip_send_status (struct usbhsg_gpriv*,unsigned short) ;
 scalar_t__ usbhs_pipe_is_stall (struct usbhs_pipe*) ;
 struct usbhsg_gpriv* usbhsg_uep_to_gpriv (struct usbhsg_uep*) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_recip_handler_std_get_endpoint(struct usbhs_priv *priv,
       struct usbhsg_uep *uep,
       struct usb_ctrlrequest *ctrl)
{
 struct usbhsg_gpriv *gpriv = usbhsg_uep_to_gpriv(uep);
 struct usbhs_pipe *pipe = usbhsg_uep_to_pipe(uep);
 unsigned short status = 0;

 if (usbhs_pipe_is_stall(pipe))
  status = 1 << USB_ENDPOINT_HALT;

 __usbhsg_recip_send_status(gpriv, status);

 return 0;
}
