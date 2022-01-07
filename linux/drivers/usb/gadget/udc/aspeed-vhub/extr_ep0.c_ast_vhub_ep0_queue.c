
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_request {int length; scalar_t__ actual; int status; int short_not_ok; int zero; int buf; int complete; } ;
struct usb_ep {int dummy; } ;
struct device {int dummy; } ;
struct ast_vhub_req {int last_desc; int active; int queue; int internal; } ;
struct TYPE_6__ {scalar_t__ state; int ctlstat; scalar_t__ dir_in; } ;
struct ast_vhub_ep {scalar_t__ d_idx; TYPE_3__ ep0; int queue; TYPE_2__* dev; struct ast_vhub* vhub; } ;
struct ast_vhub {int lock; TYPE_1__* pdev; } ;
typedef int gfp_t ;
struct TYPE_5__ {int enabled; } ;
struct TYPE_4__ {struct device dev; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int EPVDBG (struct ast_vhub_ep*,char*,...) ;
 int ESHUTDOWN ;
 int VHUB_EP0_TX_BUFF_RDY ;
 scalar_t__ WARN_ON (int) ;
 int ast_vhub_done (struct ast_vhub_ep*,struct ast_vhub_req*,int ) ;
 int ast_vhub_ep0_do_send (struct ast_vhub_ep*,struct ast_vhub_req*) ;
 int ast_vhub_ep0_rx_prime (struct ast_vhub_ep*) ;
 int dev_warn (struct device*,char*,...) ;
 scalar_t__ ep0_state_stall ;
 scalar_t__ ep0_state_status ;
 scalar_t__ ep0_state_token ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ast_vhub_ep* to_ast_ep (struct usb_ep*) ;
 struct ast_vhub_req* to_ast_req (struct usb_request*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int ast_vhub_ep0_queue(struct usb_ep* u_ep, struct usb_request *u_req,
         gfp_t gfp_flags)
{
 struct ast_vhub_req *req = to_ast_req(u_req);
 struct ast_vhub_ep *ep = to_ast_ep(u_ep);
 struct ast_vhub *vhub = ep->vhub;
 struct device *dev = &vhub->pdev->dev;
 unsigned long flags;


 if (!u_req || (!u_req->complete && !req->internal)) {
  dev_warn(dev, "Bogus EP0 request ! u_req=%p\n", u_req);
  if (u_req) {
   dev_warn(dev, "complete=%p internal=%d\n",
     u_req->complete, req->internal);
  }
  return -EINVAL;
 }


 if (WARN_ON(ep->d_idx != 0))
  return -EINVAL;


 if (ep->dev && !ep->dev->enabled)
  return -ESHUTDOWN;


 if (u_req->length && !u_req->buf && !req->internal) {
  dev_warn(dev, "Request with no buffer !\n");
  return -EINVAL;
 }

 EPVDBG(ep, "enqueue req @%p\n", req);
 EPVDBG(ep, "  l=%d zero=%d noshort=%d is_in=%d\n",
        u_req->length, u_req->zero,
        u_req->short_not_ok, ep->ep0.dir_in);


 u_req->status = -EINPROGRESS;
 u_req->actual = 0;
 req->last_desc = -1;
 req->active = 0;

 spin_lock_irqsave(&vhub->lock, flags);


 if (!list_empty(&ep->queue) ||
     ep->ep0.state == ep0_state_token ||
     ep->ep0.state == ep0_state_stall) {
  dev_warn(dev, "EP0: Request in wrong state\n");
         EPVDBG(ep, "EP0: list_empty=%d state=%d\n",
         list_empty(&ep->queue), ep->ep0.state);
  spin_unlock_irqrestore(&vhub->lock, flags);
  return -EBUSY;
 }


 list_add_tail(&req->queue, &ep->queue);

 if (ep->ep0.dir_in) {

  ast_vhub_ep0_do_send(ep, req);
 } else if (u_req->length == 0) {

  EPVDBG(ep, "0-length rx completion\n");
  ep->ep0.state = ep0_state_status;
  writel(VHUB_EP0_TX_BUFF_RDY, ep->ep0.ctlstat);
  ast_vhub_done(ep, req, 0);
 } else {

  ast_vhub_ep0_rx_prime(ep);
 }

 spin_unlock_irqrestore(&vhub->lock, flags);

 return 0;
}
