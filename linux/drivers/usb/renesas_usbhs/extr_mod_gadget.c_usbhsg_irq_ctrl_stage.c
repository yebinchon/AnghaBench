
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhsg_uep {int dummy; } ;
struct usbhsg_recip_handle {int dummy; } ;
struct usbhsg_gpriv {int gadget; TYPE_1__* driver; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int * handler; } ;
struct usbhs_irq_state {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int bRequest; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;
 int USB_TYPE_MASK ;



 int dev_dbg (struct device*,char*,int) ;
 struct usbhsg_recip_handle req_clear_feature ;
 struct usbhsg_recip_handle req_get_status ;
 struct usbhsg_recip_handle req_set_feature ;
 int stub1 (int *,struct usb_ctrlrequest*) ;
 int usbhs_ctrl_stage_end_handler ;
 int usbhs_dcp_control_transfer_done (struct usbhs_pipe*) ;
 int usbhs_fifo_pio_pop_handler ;
 int usbhs_fifo_pio_push_handler ;
 int usbhs_pipe_stall (struct usbhs_pipe*) ;
 int usbhs_status_get_ctrl_stage (struct usbhs_irq_state*) ;
 int usbhs_usbreq_get_val (struct usbhs_priv*,struct usb_ctrlrequest*) ;
 struct usbhsg_uep* usbhsg_gpriv_to_dcp (struct usbhsg_gpriv*) ;
 struct device* usbhsg_gpriv_to_dev (struct usbhsg_gpriv*) ;
 struct usbhsg_gpriv* usbhsg_priv_to_gpriv (struct usbhs_priv*) ;
 int usbhsg_recip_run_handle (struct usbhs_priv*,struct usbhsg_recip_handle*,struct usb_ctrlrequest*) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_irq_ctrl_stage(struct usbhs_priv *priv,
     struct usbhs_irq_state *irq_state)
{
 struct usbhsg_gpriv *gpriv = usbhsg_priv_to_gpriv(priv);
 struct usbhsg_uep *dcp = usbhsg_gpriv_to_dcp(gpriv);
 struct usbhs_pipe *pipe = usbhsg_uep_to_pipe(dcp);
 struct device *dev = usbhsg_gpriv_to_dev(gpriv);
 struct usb_ctrlrequest ctrl;
 struct usbhsg_recip_handle *recip_handler = ((void*)0);
 int stage = usbhs_status_get_ctrl_stage(irq_state);
 int ret = 0;

 dev_dbg(dev, "stage = %d\n", stage);
 switch (stage) {
 case 135:
  pipe->handler = &usbhs_fifo_pio_push_handler;
  break;
 case 129:
  pipe->handler = &usbhs_fifo_pio_pop_handler;
  break;
 case 136:
  pipe->handler = &usbhs_ctrl_stage_end_handler;
  break;
 case 134:
 case 128:
  usbhs_dcp_control_transfer_done(pipe);

 default:
  return ret;
 }




 usbhs_usbreq_get_val(priv, &ctrl);

 switch (ctrl.bRequestType & USB_TYPE_MASK) {
 case 130:
  switch (ctrl.bRequest) {
  case 133:
   recip_handler = &req_clear_feature;
   break;
  case 131:
   recip_handler = &req_set_feature;
   break;
  case 132:
   recip_handler = &req_get_status;
   break;
  }
 }




 if (recip_handler)
  ret = usbhsg_recip_run_handle(priv, recip_handler, &ctrl);
 else
  ret = gpriv->driver->setup(&gpriv->gadget, &ctrl);

 if (ret < 0)
  usbhs_pipe_stall(pipe);

 return ret;
}
