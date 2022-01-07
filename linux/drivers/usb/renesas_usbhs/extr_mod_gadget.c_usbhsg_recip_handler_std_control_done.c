
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int dummy; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;


 int usbhs_dcp_control_transfer_done (struct usbhs_pipe*) ;
 struct usbhsg_uep* usbhsg_gpriv_to_dcp (struct usbhsg_gpriv*) ;
 struct usbhsg_gpriv* usbhsg_priv_to_gpriv (struct usbhs_priv*) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_recip_handler_std_control_done(struct usbhs_priv *priv,
       struct usbhsg_uep *uep,
       struct usb_ctrlrequest *ctrl)
{
 struct usbhsg_gpriv *gpriv = usbhsg_priv_to_gpriv(priv);
 struct usbhsg_uep *dcp = usbhsg_gpriv_to_dcp(gpriv);
 struct usbhs_pipe *pipe = usbhsg_uep_to_pipe(dcp);

 usbhs_dcp_control_transfer_done(pipe);

 return 0;
}
