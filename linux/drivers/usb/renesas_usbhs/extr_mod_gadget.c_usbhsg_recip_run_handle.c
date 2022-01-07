
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int dummy; } ;
struct usbhsg_recip_handle {int (* device ) (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ;int (* interface ) (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ;int (* endpoint ) (struct usbhs_priv*,struct usbhsg_uep*,struct usb_ctrlrequest*) ;int name; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int wIndex; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int USB_ENDPOINT_NUMBER_MASK ;



 int USB_RECIP_MASK ;
 int dev_dbg (struct device*,char*,int ,int,char*) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,int) ;
 int le16_to_cpu (int ) ;
 struct device* usbhsg_gpriv_to_dev (struct usbhsg_gpriv*) ;
 struct usbhsg_uep* usbhsg_gpriv_to_nth_uep (struct usbhsg_gpriv*,int) ;
 struct usbhsg_gpriv* usbhsg_priv_to_gpriv (struct usbhs_priv*) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_recip_run_handle(struct usbhs_priv *priv,
       struct usbhsg_recip_handle *handler,
       struct usb_ctrlrequest *ctrl)
{
 struct usbhsg_gpriv *gpriv = usbhsg_priv_to_gpriv(priv);
 struct device *dev = usbhsg_gpriv_to_dev(gpriv);
 struct usbhsg_uep *uep;
 struct usbhs_pipe *pipe;
 int recip = ctrl->bRequestType & USB_RECIP_MASK;
 int nth = le16_to_cpu(ctrl->wIndex) & USB_ENDPOINT_NUMBER_MASK;
 int ret = 0;
 int (*func)(struct usbhs_priv *priv, struct usbhsg_uep *uep,
      struct usb_ctrlrequest *ctrl);
 char *msg;

 uep = usbhsg_gpriv_to_nth_uep(gpriv, nth);
 pipe = usbhsg_uep_to_pipe(uep);
 if (!pipe) {
  dev_err(dev, "wrong recip request\n");
  return -EINVAL;
 }

 switch (recip) {
 case 130:
  msg = "DEVICE";
  func = handler->device;
  break;
 case 128:
  msg = "INTERFACE";
  func = handler->interface;
  break;
 case 129:
  msg = "ENDPOINT";
  func = handler->endpoint;
  break;
 default:
  dev_warn(dev, "unsupported RECIP(%d)\n", recip);
  func = ((void*)0);
  ret = -EINVAL;
 }

 if (func) {
  dev_dbg(dev, "%s (pipe %d :%s)\n", handler->name, nth, msg);
  ret = func(priv, uep, ctrl);
 }

 return ret;
}
