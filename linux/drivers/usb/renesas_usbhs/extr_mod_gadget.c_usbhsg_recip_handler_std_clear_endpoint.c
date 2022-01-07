
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int dummy; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;


 int USBHSG_STATUS_WEDGE ;
 int usbhs_pipe_disable (struct usbhs_pipe*) ;
 int usbhs_pipe_enable (struct usbhs_pipe*) ;
 int usbhs_pipe_sequence_data0 (struct usbhs_pipe*) ;
 int usbhs_pkt_start (struct usbhs_pipe*) ;
 int usbhsg_recip_handler_std_control_done (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ;
 int usbhsg_status_has (struct usbhsg_gpriv*,int ) ;
 struct usbhsg_gpriv* usbhsg_uep_to_gpriv (struct usbhsg_uep*) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_recip_handler_std_clear_endpoint(struct usbhs_priv *priv,
         struct usbhsg_uep *uep,
         struct usb_ctrlrequest *ctrl)
{
 struct usbhsg_gpriv *gpriv = usbhsg_uep_to_gpriv(uep);
 struct usbhs_pipe *pipe = usbhsg_uep_to_pipe(uep);

 if (!usbhsg_status_has(gpriv, USBHSG_STATUS_WEDGE)) {
  usbhs_pipe_disable(pipe);
  usbhs_pipe_sequence_data0(pipe);
  usbhs_pipe_enable(pipe);
 }

 usbhsg_recip_handler_std_control_done(priv, uep, ctrl);

 usbhs_pkt_start(pipe);

 return 0;
}
