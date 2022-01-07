
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xusb_udc {int lock; int gadget; scalar_t__ dma_enabled; int dev; } ;
struct TYPE_4__ {int status; int (* complete ) (TYPE_2__*,TYPE_1__*) ;scalar_t__ length; } ;
struct xusb_req {TYPE_1__ usb_req; int queue; } ;
struct TYPE_5__ {int name; } ;
struct xusb_ep {TYPE_2__ ep_usb; int is_in; scalar_t__ epnumber; struct xusb_udc* udc; } ;


 int EINPROGRESS ;
 int ESHUTDOWN ;
 int dev_dbg (int ,char*,int ,struct xusb_req*,int) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_2__*,TYPE_1__*) ;
 int usb_gadget_unmap_request (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void xudc_done(struct xusb_ep *ep, struct xusb_req *req, int status)
{
 struct xusb_udc *udc = ep->udc;

 list_del_init(&req->queue);

 if (req->usb_req.status == -EINPROGRESS)
  req->usb_req.status = status;
 else
  status = req->usb_req.status;

 if (status && status != -ESHUTDOWN)
  dev_dbg(udc->dev, "%s done %p, status %d\n",
   ep->ep_usb.name, req, status);

 if (udc->dma_enabled && ep->epnumber && req->usb_req.length)
  usb_gadget_unmap_request(&udc->gadget, &req->usb_req,
      ep->is_in);

 if (req->usb_req.complete) {
  spin_unlock(&udc->lock);
  req->usb_req.complete(&ep->ep_usb, &req->usb_req);
  spin_lock(&udc->lock);
 }
}
