
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; } ;
struct fotg210_request {TYPE_2__ req; int queue; } ;
struct fotg210_ep {TYPE_3__* fotg210; int queue; scalar_t__ epnum; int ep; } ;
struct TYPE_4__ {scalar_t__ speed; } ;
struct TYPE_6__ {int lock; TYPE_1__ gadget; } ;


 int ESHUTDOWN ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int fotg210_disable_fifo_int (struct fotg210_ep*) ;
 int fotg210_set_cxdone (TYPE_3__*) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_gadget_giveback_request (int *,TYPE_2__*) ;

__attribute__((used)) static void fotg210_done(struct fotg210_ep *ep, struct fotg210_request *req,
   int status)
{
 list_del_init(&req->queue);


 if (ep->fotg210->gadget.speed == USB_SPEED_UNKNOWN)
  req->req.status = -ESHUTDOWN;
 else
  req->req.status = status;

 spin_unlock(&ep->fotg210->lock);
 usb_gadget_giveback_request(&ep->ep, &req->req);
 spin_lock(&ep->fotg210->lock);

 if (ep->epnum) {
  if (list_empty(&ep->queue))
   fotg210_disable_fifo_int(ep);
 } else {
  fotg210_set_cxdone(ep->fotg210);
 }
}
