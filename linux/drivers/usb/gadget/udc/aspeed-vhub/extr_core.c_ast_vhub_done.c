
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int status; scalar_t__ dma; } ;
struct ast_vhub_req {int internal; TYPE_4__ req; int queue; } ;
struct TYPE_7__ {int is_in; } ;
struct ast_vhub_ep {TYPE_3__* vhub; int ep; TYPE_2__ epn; TYPE_1__* dev; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_6__ {int gadget; } ;


 int EINPROGRESS ;
 int EPVDBG (struct ast_vhub_ep*,char*,struct ast_vhub_req*,int) ;
 int WARN_ON (int) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_gadget_giveback_request (int *,TYPE_4__*) ;
 int usb_gadget_unmap_request (int *,TYPE_4__*,int ) ;

void ast_vhub_done(struct ast_vhub_ep *ep, struct ast_vhub_req *req,
     int status)
{
 bool internal = req->internal;

 EPVDBG(ep, "completing request @%p, status %d\n", req, status);

 list_del_init(&req->queue);

 if (req->req.status == -EINPROGRESS)
  req->req.status = status;

 if (req->req.dma) {
  if (!WARN_ON(!ep->dev))
   usb_gadget_unmap_request(&ep->dev->gadget,
       &req->req, ep->epn.is_in);
  req->req.dma = 0;
 }





 if (!internal) {
  spin_unlock(&ep->vhub->lock);
  usb_gadget_giveback_request(&ep->ep, &req->req);
  spin_lock(&ep->vhub->lock);
 }
}
