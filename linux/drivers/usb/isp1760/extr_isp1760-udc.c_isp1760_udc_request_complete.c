
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isp1760_udc {scalar_t__ ep0_dir; int lock; TYPE_1__* isp; } ;
struct TYPE_4__ {int status; int (* complete ) (int *,TYPE_2__*) ;} ;
struct isp1760_request {TYPE_2__ req; int * ep; } ;
struct isp1760_ep {scalar_t__ addr; int ep; struct isp1760_udc* udc; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ USB_DIR_OUT ;
 int dev_dbg (int ,char*,struct isp1760_request*,int) ;
 int isp1760_udc_ctrl_send_status (struct isp1760_ep*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int *,TYPE_2__*) ;

__attribute__((used)) static void isp1760_udc_request_complete(struct isp1760_ep *ep,
      struct isp1760_request *req,
      int status)
{
 struct isp1760_udc *udc = ep->udc;
 unsigned long flags;

 dev_dbg(ep->udc->isp->dev, "completing request %p with status %d\n",
  req, status);

 req->ep = ((void*)0);
 req->req.status = status;
 req->req.complete(&ep->ep, &req->req);

 spin_lock_irqsave(&udc->lock, flags);






 if (status == 0 && ep->addr == 0 && udc->ep0_dir == USB_DIR_OUT)
  isp1760_udc_ctrl_send_status(ep, USB_DIR_OUT);

 spin_unlock_irqrestore(&udc->lock, flags);
}
