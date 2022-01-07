
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhsg_uep {int ep; } ;
struct TYPE_2__ {int status; } ;
struct usbhsg_request {TYPE_1__ req; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int ) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int usb_gadget_giveback_request (int *,TYPE_1__*) ;
 int usbhs_pipe_number (struct usbhs_pipe*) ;
 int usbhs_priv_to_lock (struct usbhs_priv*) ;
 struct device* usbhsg_gpriv_to_dev (struct usbhsg_gpriv*) ;
 struct usbhs_priv* usbhsg_gpriv_to_priv (struct usbhsg_gpriv*) ;
 struct usbhsg_gpriv* usbhsg_uep_to_gpriv (struct usbhsg_uep*) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;

__attribute__((used)) static void __usbhsg_queue_pop(struct usbhsg_uep *uep,
          struct usbhsg_request *ureq,
          int status)
{
 struct usbhsg_gpriv *gpriv = usbhsg_uep_to_gpriv(uep);
 struct usbhs_pipe *pipe = usbhsg_uep_to_pipe(uep);
 struct device *dev = usbhsg_gpriv_to_dev(gpriv);
 struct usbhs_priv *priv = usbhsg_gpriv_to_priv(gpriv);

 if (pipe)
  dev_dbg(dev, "pipe %d : queue pop\n", usbhs_pipe_number(pipe));

 ureq->req.status = status;
 spin_unlock(usbhs_priv_to_lock(priv));
 usb_gadget_giveback_request(&uep->ep, &ureq->req);
 spin_lock(usbhs_priv_to_lock(priv));
}
