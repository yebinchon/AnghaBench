
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ actual; int status; int length; } ;
struct usb_ep {int dummy; } ;
struct renesas_usb3_request {int queue; } ;
struct renesas_usb3_ep {int num; int queue; } ;
struct renesas_usb3 {int lock; } ;
typedef int gfp_t ;


 int EINPROGRESS ;
 int dev_dbg (int ,char*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_start_pipe0 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 int usb3_start_pipen (struct renesas_usb3_ep*,struct renesas_usb3_request*) ;
 int usb3_to_dev (struct renesas_usb3*) ;
 struct renesas_usb3_ep* usb_ep_to_usb3_ep (struct usb_ep*) ;
 struct renesas_usb3_request* usb_req_to_usb3_req (struct usb_request*) ;

__attribute__((used)) static int renesas_usb3_ep_queue(struct usb_ep *_ep, struct usb_request *_req,
     gfp_t gfp_flags)
{
 struct renesas_usb3_ep *usb3_ep = usb_ep_to_usb3_ep(_ep);
 struct renesas_usb3_request *usb3_req = usb_req_to_usb3_req(_req);
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);
 unsigned long flags;

 dev_dbg(usb3_to_dev(usb3), "ep_queue: ep%2d, %u\n", usb3_ep->num,
  _req->length);

 _req->status = -EINPROGRESS;
 _req->actual = 0;
 spin_lock_irqsave(&usb3->lock, flags);
 list_add_tail(&usb3_req->queue, &usb3_ep->queue);
 spin_unlock_irqrestore(&usb3->lock, flags);

 if (!usb3_ep->num)
  usb3_start_pipe0(usb3_ep, usb3_req);
 else
  usb3_start_pipen(usb3_ep, usb3_req);

 return 0;
}
