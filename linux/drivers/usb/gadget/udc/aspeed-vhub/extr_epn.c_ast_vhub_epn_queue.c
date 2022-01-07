
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct usb_request {int length; scalar_t__ actual; int status; int no_interrupt; int short_not_ok; int zero; scalar_t__ dma; scalar_t__ buf; int complete; } ;
struct usb_ep {int maxpacket; int desc; } ;
struct ast_vhub_req {int active; int last_desc; int queue; scalar_t__ act_count; int internal; } ;
struct TYPE_6__ {scalar_t__ desc_mode; scalar_t__ is_in; int enabled; } ;
struct ast_vhub_ep {TYPE_3__ epn; int queue; TYPE_1__* dev; int d_idx; struct ast_vhub* vhub; } ;
struct ast_vhub {int lock; TYPE_2__* pdev; } ;
typedef int gfp_t ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int gadget; int enabled; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int EPDBG (struct ast_vhub_ep*,char*) ;
 int EPVDBG (struct ast_vhub_ep*,char*,...) ;
 int ESHUTDOWN ;
 int ast_vhub_epn_kick (struct ast_vhub_ep*,struct ast_vhub_req*) ;
 int ast_vhub_epn_kick_desc (struct ast_vhub_ep*,struct ast_vhub_req*) ;
 int dev_warn (int *,char*,...) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ast_vhub_ep* to_ast_ep (struct usb_ep*) ;
 struct ast_vhub_req* to_ast_req (struct usb_request*) ;
 int usb_gadget_map_request (int *,struct usb_request*,scalar_t__) ;

__attribute__((used)) static int ast_vhub_epn_queue(struct usb_ep* u_ep, struct usb_request *u_req,
         gfp_t gfp_flags)
{
 struct ast_vhub_req *req = to_ast_req(u_req);
 struct ast_vhub_ep *ep = to_ast_ep(u_ep);
 struct ast_vhub *vhub = ep->vhub;
 unsigned long flags;
 bool empty;
 int rc;


 if (!u_req || !u_req->complete || !u_req->buf) {
  dev_warn(&vhub->pdev->dev, "Bogus EPn request ! u_req=%p\n", u_req);
  if (u_req) {
   dev_warn(&vhub->pdev->dev, "complete=%p internal=%d\n",
     u_req->complete, req->internal);
  }
  return -EINVAL;
 }


 if (!ep->epn.enabled || !u_ep->desc || !ep->dev || !ep->d_idx ||
     !ep->dev->enabled) {
  EPDBG(ep, "Enqueuing request on wrong or disabled EP\n");
  return -ESHUTDOWN;
 }
 if (ep->epn.desc_mode ||
     ((((unsigned long)u_req->buf & 7) == 0) &&
      (ep->epn.is_in || !(u_req->length & (u_ep->maxpacket - 1))))) {
  rc = usb_gadget_map_request(&ep->dev->gadget, u_req,
         ep->epn.is_in);
  if (rc) {
   dev_warn(&vhub->pdev->dev,
     "Request mapping failure %d\n", rc);
   return rc;
  }
 } else
  u_req->dma = 0;

 EPVDBG(ep, "enqueue req @%p\n", req);
 EPVDBG(ep, " l=%d dma=0x%x zero=%d noshort=%d noirq=%d is_in=%d\n",
        u_req->length, (u32)u_req->dma, u_req->zero,
        u_req->short_not_ok, u_req->no_interrupt,
        ep->epn.is_in);


 u_req->status = -EINPROGRESS;
 u_req->actual = 0;
 req->act_count = 0;
 req->active = 0;
 req->last_desc = -1;
 spin_lock_irqsave(&vhub->lock, flags);
 empty = list_empty(&ep->queue);


 list_add_tail(&req->queue, &ep->queue);
 if (empty) {
  if (ep->epn.desc_mode)
   ast_vhub_epn_kick_desc(ep, req);
  else
   ast_vhub_epn_kick(ep, req);
 }
 spin_unlock_irqrestore(&vhub->lock, flags);

 return 0;
}
