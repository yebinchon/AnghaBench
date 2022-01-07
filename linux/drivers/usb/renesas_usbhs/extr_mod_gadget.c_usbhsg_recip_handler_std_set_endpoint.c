
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;


 int usbhs_pipe_stall (struct usbhs_pipe*) ;
 int usbhsg_recip_handler_std_control_done (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_recip_handler_std_set_endpoint(struct usbhs_priv *priv,
       struct usbhsg_uep *uep,
       struct usb_ctrlrequest *ctrl)
{
 struct usbhs_pipe *pipe = usbhsg_uep_to_pipe(uep);

 usbhs_pipe_stall(pipe);

 usbhsg_recip_handler_std_control_done(priv, uep, ctrl);

 return 0;
}
