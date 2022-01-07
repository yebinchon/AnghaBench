
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mv_udc {int gadget; TYPE_4__* dev; scalar_t__ test_mode; struct mv_req* status_req; int ep0_state; int ep0_dir; struct mv_ep* eps; } ;
struct TYPE_10__ {int length; scalar_t__ dma; scalar_t__ buf; int * complete; scalar_t__ actual; int status; } ;
struct mv_req {int mapped; TYPE_5__ req; int queue; scalar_t__ dtd_count; scalar_t__ test_mode; struct mv_ep* ep; } ;
struct mv_ep {int queue; TYPE_3__* udc; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_6__ {int parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;
struct TYPE_8__ {TYPE_2__ gadget; } ;


 scalar_t__ DMA_ADDR_INVALID ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 int ENOMEM ;
 int WAIT_FOR_OUT_STATUS ;
 int cpu_to_le16 (int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ dma_map_single (int ,scalar_t__,int,int ) ;
 scalar_t__ ep_dir (struct mv_ep*) ;
 int list_add_tail (int *,int *) ;
 int * prime_status_complete ;
 int queue_dtd (struct mv_ep*,struct mv_req*) ;
 int req_to_dtd (struct mv_req*) ;
 int usb_gadget_unmap_request (int *,TYPE_5__*,scalar_t__) ;

__attribute__((used)) static int
udc_prime_status(struct mv_udc *udc, u8 direction, u16 status, bool empty)
{
 int retval = 0;
 struct mv_req *req;
 struct mv_ep *ep;

 ep = &udc->eps[0];
 udc->ep0_dir = direction;
 udc->ep0_state = WAIT_FOR_OUT_STATUS;

 req = udc->status_req;


 if (empty == 0) {
  *((u16 *) req->req.buf) = cpu_to_le16(status);
  req->req.length = 2;
 } else
  req->req.length = 0;

 req->ep = ep;
 req->req.status = -EINPROGRESS;
 req->req.actual = 0;
 if (udc->test_mode) {
  req->req.complete = prime_status_complete;
  req->test_mode = udc->test_mode;
  udc->test_mode = 0;
 } else
  req->req.complete = ((void*)0);
 req->dtd_count = 0;

 if (req->req.dma == DMA_ADDR_INVALID) {
  req->req.dma = dma_map_single(ep->udc->gadget.dev.parent,
    req->req.buf, req->req.length,
    ep_dir(ep) ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
  req->mapped = 1;
 }


 if (!req_to_dtd(req)) {
  retval = queue_dtd(ep, req);
  if (retval) {
   dev_err(&udc->dev->dev,
    "Failed to queue dtd when prime status\n");
   goto out;
  }
 } else{
  retval = -ENOMEM;
  dev_err(&udc->dev->dev,
   "Failed to dma_pool_alloc when prime status\n");
  goto out;
 }

 list_add_tail(&req->queue, &ep->queue);

 return 0;
out:
 usb_gadget_unmap_request(&udc->gadget, &req->req, ep_dir(ep));

 return retval;
}
