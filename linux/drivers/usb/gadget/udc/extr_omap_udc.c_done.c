
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct omap_udc {int lock; int gadget; } ;
struct TYPE_5__ {int status; int length; int actual; } ;
struct omap_req {TYPE_1__ req; int queue; } ;
struct TYPE_6__ {int name; } ;
struct omap_ep {unsigned int stopped; int bEndpointAddress; struct omap_udc* udc; TYPE_2__ ep; scalar_t__ has_dma; } ;


 int EINPROGRESS ;
 int ESHUTDOWN ;
 int USB_DIR_IN ;
 int VDBG (char*,int ,TYPE_1__*,int,int ,int ) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_gadget_giveback_request (TYPE_2__*,TYPE_1__*) ;
 int usb_gadget_unmap_request (int *,TYPE_1__*,int) ;
 scalar_t__ use_dma ;

__attribute__((used)) static void
done(struct omap_ep *ep, struct omap_req *req, int status)
{
 struct omap_udc *udc = ep->udc;
 unsigned stopped = ep->stopped;

 list_del_init(&req->queue);

 if (req->req.status == -EINPROGRESS)
  req->req.status = status;
 else
  status = req->req.status;

 if (use_dma && ep->has_dma)
  usb_gadget_unmap_request(&udc->gadget, &req->req,
    (ep->bEndpointAddress & USB_DIR_IN));


 if (status && status != -ESHUTDOWN)

  VDBG("complete %s req %p stat %d len %u/%u\n",
   ep->ep.name, &req->req, status,
   req->req.actual, req->req.length);


 ep->stopped = 1;
 spin_unlock(&ep->udc->lock);
 usb_gadget_giveback_request(&ep->ep, &req->req);
 spin_lock(&ep->udc->lock);
 ep->stopped = stopped;
}
