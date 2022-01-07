
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status; int buf; int length; int actual; } ;
struct net2272_request {TYPE_1__ req; int queue; } ;
struct TYPE_6__ {int name; } ;
struct net2272_ep {unsigned int stopped; scalar_t__ num; TYPE_2__ ep; int is_in; scalar_t__ dma; struct net2272* dev; } ;
struct net2272 {int lock; int dev; int gadget; scalar_t__ protocol_stall; } ;


 int EINPROGRESS ;
 int ESHUTDOWN ;
 int allow_status (struct net2272_ep*) ;
 int dev_vdbg (int ,char*,int ,TYPE_1__*,int,int ,int ,int ) ;
 int list_del_init (int *) ;
 int set_halt (struct net2272_ep*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_gadget_giveback_request (TYPE_2__*,TYPE_1__*) ;
 int usb_gadget_unmap_request (int *,TYPE_1__*,int ) ;
 scalar_t__ use_dma ;

__attribute__((used)) static void
net2272_done(struct net2272_ep *ep, struct net2272_request *req, int status)
{
 struct net2272 *dev;
 unsigned stopped = ep->stopped;

 if (ep->num == 0) {
  if (ep->dev->protocol_stall) {
   ep->stopped = 1;
   set_halt(ep);
  }
  allow_status(ep);
 }

 list_del_init(&req->queue);

 if (req->req.status == -EINPROGRESS)
  req->req.status = status;
 else
  status = req->req.status;

 dev = ep->dev;
 if (use_dma && ep->dma)
  usb_gadget_unmap_request(&dev->gadget, &req->req,
    ep->is_in);

 if (status && status != -ESHUTDOWN)
  dev_vdbg(dev->dev, "complete %s req %p stat %d len %u/%u buf %p\n",
   ep->ep.name, &req->req, status,
   req->req.actual, req->req.length, req->req.buf);


 ep->stopped = 1;
 spin_unlock(&dev->lock);
 usb_gadget_giveback_request(&ep->ep, &req->req);
 spin_lock(&dev->lock);
 ep->stopped = stopped;
}
