
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usba_udc {int lock; int gadget; } ;
struct TYPE_4__ {int status; int actual; } ;
struct usba_request {TYPE_1__ req; scalar_t__ using_dma; int queue; } ;
struct TYPE_5__ {int name; } ;
struct usba_ep {TYPE_2__ ep; int is_in; struct usba_udc* udc; } ;


 int DBG (int,char*,int ,struct usba_request*,int,int ) ;
 int DBG_GADGET ;
 int DBG_REQ ;
 int EINPROGRESS ;
 int WARN_ON (int) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_gadget_giveback_request (TYPE_2__*,TYPE_1__*) ;
 int usb_gadget_unmap_request (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void
request_complete(struct usba_ep *ep, struct usba_request *req, int status)
{
 struct usba_udc *udc = ep->udc;

 WARN_ON(!list_empty(&req->queue));

 if (req->req.status == -EINPROGRESS)
  req->req.status = status;

 if (req->using_dma)
  usb_gadget_unmap_request(&udc->gadget, &req->req, ep->is_in);

 DBG(DBG_GADGET | DBG_REQ,
  "%s: req %p complete: status %d, actual %u\n",
  ep->ep.name, req, req->req.status, req->req.actual);

 spin_unlock(&udc->lock);
 usb_gadget_giveback_request(&ep->ep, &req->req);
 spin_lock(&udc->lock);
}
