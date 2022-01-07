
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lpc32xx_udc {int lock; int gadget; } ;
struct TYPE_4__ {int status; } ;
struct lpc32xx_request {TYPE_1__ req; int dd_desc_ptr; int queue; } ;
struct TYPE_5__ {int name; } ;
struct lpc32xx_ep {TYPE_2__ ep; scalar_t__ req_pending; int is_in; scalar_t__ lep; struct lpc32xx_udc* udc; } ;


 int EINPROGRESS ;
 int ESHUTDOWN ;
 int ep_dbg (struct lpc32xx_ep*,char*,int ,struct lpc32xx_request*,int) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udc_dd_free (struct lpc32xx_udc*,int ) ;
 int usb_gadget_giveback_request (TYPE_2__*,TYPE_1__*) ;
 int usb_gadget_unmap_request (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void done(struct lpc32xx_ep *ep, struct lpc32xx_request *req, int status)
{
 struct lpc32xx_udc *udc = ep->udc;

 list_del_init(&req->queue);
 if (req->req.status == -EINPROGRESS)
  req->req.status = status;
 else
  status = req->req.status;

 if (ep->lep) {
  usb_gadget_unmap_request(&udc->gadget, &req->req, ep->is_in);


  udc_dd_free(udc, req->dd_desc_ptr);
 }

 if (status && status != -ESHUTDOWN)
  ep_dbg(ep, "%s done %p, status %d\n", ep->ep.name, req, status);

 ep->req_pending = 0;
 spin_unlock(&udc->lock);
 usb_gadget_giveback_request(&ep->ep, &req->req);
 spin_lock(&udc->lock);
}
