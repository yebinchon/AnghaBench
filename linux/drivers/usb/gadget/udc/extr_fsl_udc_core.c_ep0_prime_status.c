
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fsl_udc {scalar_t__ ep0_state; struct fsl_ep* eps; int ep0_dir; struct fsl_req* status_req; } ;
struct TYPE_4__ {int complete; scalar_t__ actual; int status; scalar_t__ length; } ;
struct fsl_req {int queue; TYPE_2__ req; scalar_t__ dtd_count; struct fsl_ep* ep; } ;
struct fsl_ep {int queue; TYPE_1__* udc; } ;
struct TYPE_3__ {int gadget; } ;


 scalar_t__ DATA_STATE_XMIT ;
 int EINPROGRESS ;
 int ENOMEM ;
 int EP_DIR_IN ;
 int GFP_ATOMIC ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 scalar_t__ WAIT_FOR_OUT_STATUS ;
 int ep_is_in (struct fsl_ep*) ;
 int fsl_noop_complete ;
 int fsl_queue_td (struct fsl_ep*,struct fsl_req*) ;
 scalar_t__ fsl_req_to_dtd (struct fsl_req*,int ) ;
 int list_add_tail (int *,int *) ;
 int usb_gadget_map_request (int *,TYPE_2__*,int ) ;

__attribute__((used)) static int ep0_prime_status(struct fsl_udc *udc, int direction)
{
 struct fsl_req *req = udc->status_req;
 struct fsl_ep *ep;
 int ret;

 if (direction == EP_DIR_IN)
  udc->ep0_dir = USB_DIR_IN;
 else
  udc->ep0_dir = USB_DIR_OUT;

 ep = &udc->eps[0];
 if (udc->ep0_state != DATA_STATE_XMIT)
  udc->ep0_state = WAIT_FOR_OUT_STATUS;

 req->ep = ep;
 req->req.length = 0;
 req->req.status = -EINPROGRESS;
 req->req.actual = 0;
 req->req.complete = fsl_noop_complete;
 req->dtd_count = 0;

 ret = usb_gadget_map_request(&ep->udc->gadget, &req->req, ep_is_in(ep));
 if (ret)
  return ret;

 if (fsl_req_to_dtd(req, GFP_ATOMIC) == 0)
  fsl_queue_td(ep, req);
 else
  return -ENOMEM;

 list_add_tail(&req->queue, &ep->queue);

 return 0;
}
