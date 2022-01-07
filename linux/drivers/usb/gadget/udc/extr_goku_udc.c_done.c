
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct goku_udc {int lock; int gadget; } ;
struct TYPE_5__ {int status; int length; int actual; } ;
struct goku_request {TYPE_1__ req; int queue; } ;
struct TYPE_6__ {int name; } ;
struct goku_ep {unsigned int stopped; TYPE_2__ ep; int is_in; scalar_t__ dma; struct goku_udc* dev; } ;


 int EINPROGRESS ;
 int ESHUTDOWN ;
 int VDBG (struct goku_udc*,char*,int ,TYPE_1__*,int,int ,int ) ;
 scalar_t__ likely (int) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_gadget_giveback_request (TYPE_2__*,TYPE_1__*) ;
 int usb_gadget_unmap_request (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void
done(struct goku_ep *ep, struct goku_request *req, int status)
{
 struct goku_udc *dev;
 unsigned stopped = ep->stopped;

 list_del_init(&req->queue);

 if (likely(req->req.status == -EINPROGRESS))
  req->req.status = status;
 else
  status = req->req.status;

 dev = ep->dev;

 if (ep->dma)
  usb_gadget_unmap_request(&dev->gadget, &req->req, ep->is_in);


 if (status && status != -ESHUTDOWN)

  VDBG(dev, "complete %s req %p stat %d len %u/%u\n",
   ep->ep.name, &req->req, status,
   req->req.actual, req->req.length);


 ep->stopped = 1;
 spin_unlock(&dev->lock);
 usb_gadget_giveback_request(&ep->ep, &req->req);
 spin_lock(&dev->lock);
 ep->stopped = stopped;
}
