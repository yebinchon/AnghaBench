
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int dummy; } ;
struct usbhsg_request {int dummy; } ;
struct usbhsg_gpriv {int driver; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
typedef int gfp_t ;


 int ESHUTDOWN ;
 scalar_t__ unlikely (int) ;
 struct usbhsg_uep* usbhsg_ep_to_uep (struct usb_ep*) ;
 scalar_t__ usbhsg_is_not_connected (struct usbhsg_gpriv*) ;
 int usbhsg_queue_push (struct usbhsg_uep*,struct usbhsg_request*) ;
 struct usbhsg_request* usbhsg_req_to_ureq (struct usb_request*) ;
 struct usbhsg_gpriv* usbhsg_uep_to_gpriv (struct usbhsg_uep*) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_ep_queue(struct usb_ep *ep, struct usb_request *req,
     gfp_t gfp_flags)
{
 struct usbhsg_uep *uep = usbhsg_ep_to_uep(ep);
 struct usbhsg_gpriv *gpriv = usbhsg_uep_to_gpriv(uep);
 struct usbhsg_request *ureq = usbhsg_req_to_ureq(req);
 struct usbhs_pipe *pipe = usbhsg_uep_to_pipe(uep);


 if (usbhsg_is_not_connected(gpriv) ||
     unlikely(!gpriv->driver) ||
     unlikely(!pipe))
  return -ESHUTDOWN;

 usbhsg_queue_push(uep, ureq);

 return 0;
}
