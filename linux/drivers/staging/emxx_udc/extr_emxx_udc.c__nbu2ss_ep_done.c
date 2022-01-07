
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbu2ss_udc {int lock; } ;
struct TYPE_2__ {int status; scalar_t__ dma; int (* complete ) (int *,TYPE_1__*) ;} ;
struct nbu2ss_req {TYPE_1__ req; int queue; } ;
struct nbu2ss_ep {scalar_t__ direct; scalar_t__ epnum; int ep; int queue; scalar_t__ stalled; struct nbu2ss_udc* udc; } ;


 int ECONNRESET ;
 int EINPROGRESS ;
 scalar_t__ USB_DIR_OUT ;
 int _nbu2ss_dma_unmap_single (struct nbu2ss_udc*,struct nbu2ss_ep*,struct nbu2ss_req*,scalar_t__) ;
 int _nbu2ss_epn_set_stall (struct nbu2ss_udc*,struct nbu2ss_ep*) ;
 int _nbu2ss_fifo_flush (struct nbu2ss_udc*,struct nbu2ss_ep*) ;
 int _nbu2ss_restert_transfer (struct nbu2ss_ep*) ;
 scalar_t__ likely (int) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *,TYPE_1__*) ;

__attribute__((used)) static void _nbu2ss_ep_done(struct nbu2ss_ep *ep,
       struct nbu2ss_req *req,
       int status)
{
 struct nbu2ss_udc *udc = ep->udc;

 list_del_init(&req->queue);

 if (status == -ECONNRESET)
  _nbu2ss_fifo_flush(udc, ep);

 if (likely(req->req.status == -EINPROGRESS))
  req->req.status = status;

 if (ep->stalled) {
  _nbu2ss_epn_set_stall(udc, ep);
 } else {
  if (!list_empty(&ep->queue))
   _nbu2ss_restert_transfer(ep);
 }







 spin_unlock(&udc->lock);
 req->req.complete(&ep->ep, &req->req);
 spin_lock(&udc->lock);
}
