
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_5__ {int is_selfpowered; } ;
struct fsl_udc {int remote_wakeup; int ep0_state; struct fsl_req* status_req; int ep0_dir; TYPE_1__ gadget; struct fsl_ep* eps; } ;
struct TYPE_8__ {int length; int complete; scalar_t__ actual; int status; scalar_t__ buf; } ;
struct fsl_req {int queue; TYPE_4__ req; scalar_t__ dtd_count; struct fsl_ep* ep; } ;
struct TYPE_6__ {int desc; } ;
struct fsl_ep {int queue; TYPE_3__* udc; TYPE_2__ ep; } ;
struct TYPE_7__ {int gadget; } ;


 int DATA_STATE_XMIT ;
 int EINPROGRESS ;
 int EP_DIR_OUT ;
 int GFP_ATOMIC ;
 int USB_DEVICE_REMOTE_WAKEUP ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_HALT ;
 int USB_RECIP_DEVICE ;
 int USB_RECIP_ENDPOINT ;
 int USB_RECIP_INTERFACE ;
 int USB_RECIP_MASK ;
 int cpu_to_le16 (int) ;
 int dr_ep_get_stall (int ,int ) ;
 scalar_t__ ep0_prime_status (struct fsl_udc*,int ) ;
 int ep0stall (struct fsl_udc*) ;
 int ep_index (struct fsl_ep*) ;
 int ep_is_in (struct fsl_ep*) ;
 int fsl_noop_complete ;
 int fsl_queue_td (struct fsl_ep*,struct fsl_req*) ;
 scalar_t__ fsl_req_to_dtd (struct fsl_req*,int ) ;
 struct fsl_ep* get_ep_by_pipe (struct fsl_udc*,int ) ;
 int get_pipe_by_windex (int) ;
 int list_add_tail (int *,int *) ;
 int usb_gadget_map_request (int *,TYPE_4__*,int ) ;

__attribute__((used)) static void ch9getstatus(struct fsl_udc *udc, u8 request_type, u16 value,
  u16 index, u16 length)
{
 u16 tmp = 0;
 struct fsl_req *req;
 struct fsl_ep *ep;
 int ret;

 ep = &udc->eps[0];

 if ((request_type & USB_RECIP_MASK) == USB_RECIP_DEVICE) {

  tmp = udc->gadget.is_selfpowered;
  tmp |= udc->remote_wakeup << USB_DEVICE_REMOTE_WAKEUP;
 } else if ((request_type & USB_RECIP_MASK) == USB_RECIP_INTERFACE) {


  tmp = 0;
 } else if ((request_type & USB_RECIP_MASK) == USB_RECIP_ENDPOINT) {

  struct fsl_ep *target_ep;

  target_ep = get_ep_by_pipe(udc, get_pipe_by_windex(index));


  if (!target_ep->ep.desc)
   goto stall;
  tmp = dr_ep_get_stall(ep_index(target_ep), ep_is_in(target_ep))
    << USB_ENDPOINT_HALT;
 }

 udc->ep0_dir = USB_DIR_IN;

 req = udc->status_req;

 *((u16 *) req->req.buf) = cpu_to_le16(tmp);

 req->ep = ep;
 req->req.length = 2;
 req->req.status = -EINPROGRESS;
 req->req.actual = 0;
 req->req.complete = fsl_noop_complete;
 req->dtd_count = 0;

 ret = usb_gadget_map_request(&ep->udc->gadget, &req->req, ep_is_in(ep));
 if (ret)
  goto stall;


 if ((fsl_req_to_dtd(req, GFP_ATOMIC) == 0))
  fsl_queue_td(ep, req);
 else
  goto stall;

 list_add_tail(&req->queue, &ep->queue);
 udc->ep0_state = DATA_STATE_XMIT;
 if (ep0_prime_status(udc, EP_DIR_OUT))
  ep0stall(udc);

 return;
stall:
 ep0stall(udc);
}
