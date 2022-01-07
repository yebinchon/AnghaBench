
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {int lock; } ;
struct usbhsg_request {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;


 int ECONNRESET ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usbhs_pkt_pop (struct usbhs_pipe*,int ) ;
 struct usbhsg_uep* usbhsg_ep_to_uep (struct usb_ep*) ;
 int usbhsg_queue_pop (struct usbhsg_uep*,struct usbhsg_request*,int ) ;
 struct usbhsg_request* usbhsg_req_to_ureq (struct usb_request*) ;
 struct usbhs_pipe* usbhsg_uep_to_pipe (struct usbhsg_uep*) ;
 int usbhsg_ureq_to_pkt (struct usbhsg_request*) ;

__attribute__((used)) static int usbhsg_ep_dequeue(struct usb_ep *ep, struct usb_request *req)
{
 struct usbhsg_uep *uep = usbhsg_ep_to_uep(ep);
 struct usbhsg_request *ureq = usbhsg_req_to_ureq(req);
 struct usbhs_pipe *pipe;
 unsigned long flags;

 spin_lock_irqsave(&uep->lock, flags);
 pipe = usbhsg_uep_to_pipe(uep);
 if (pipe)
  usbhs_pkt_pop(pipe, usbhsg_ureq_to_pkt(ureq));





 usbhsg_queue_pop(uep, ureq, -ECONNRESET);
 spin_unlock_irqrestore(&uep->lock, flags);

 return 0;
}
