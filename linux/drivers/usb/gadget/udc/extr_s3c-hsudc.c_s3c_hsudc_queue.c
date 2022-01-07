
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_request {scalar_t__ length; scalar_t__ actual; int status; int buf; int complete; } ;
struct usb_ep {int dummy; } ;
struct s3c_hsudc_req {int queue; } ;
struct s3c_hsudc_ep {int queue; int stopped; int bEndpointAddress; struct s3c_hsudc* dev; } ;
struct TYPE_2__ {scalar_t__ speed; } ;
struct s3c_hsudc {int regs; int lock; int ep0state; TYPE_1__ gadget; int driver; } ;
typedef int gfp_t ;


 int EINPROGRESS ;
 int EINVAL ;
 int ESHUTDOWN ;
 int S3C_EP0SR ;
 int S3C_ESR ;
 int S3C_ESR_RX_SUCCESS ;
 int S3C_ESR_TX_SUCCESS ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int WAIT_FOR_SETUP ;
 scalar_t__ ep_index (struct s3c_hsudc_ep*) ;
 scalar_t__ ep_is_in (struct s3c_hsudc_ep*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 struct s3c_hsudc_ep* our_ep (struct usb_ep*) ;
 struct s3c_hsudc_req* our_req (struct usb_request*) ;
 int readl (int) ;
 int s3c_hsudc_complete_request (struct s3c_hsudc_ep*,struct s3c_hsudc_req*,int ) ;
 int s3c_hsudc_read_fifo (struct s3c_hsudc_ep*,struct s3c_hsudc_req*) ;
 int s3c_hsudc_write_fifo (struct s3c_hsudc_ep*,struct s3c_hsudc_req*) ;
 int set_index (struct s3c_hsudc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int s3c_hsudc_queue(struct usb_ep *_ep, struct usb_request *_req,
   gfp_t gfp_flags)
{
 struct s3c_hsudc_req *hsreq;
 struct s3c_hsudc_ep *hsep;
 struct s3c_hsudc *hsudc;
 unsigned long flags;
 u32 offset;
 u32 csr;

 hsreq = our_req(_req);
 if ((!_req || !_req->complete || !_req->buf ||
  !list_empty(&hsreq->queue)))
  return -EINVAL;

 hsep = our_ep(_ep);
 hsudc = hsep->dev;
 if (!hsudc->driver || hsudc->gadget.speed == USB_SPEED_UNKNOWN)
  return -ESHUTDOWN;

 spin_lock_irqsave(&hsudc->lock, flags);
 set_index(hsudc, hsep->bEndpointAddress);

 _req->status = -EINPROGRESS;
 _req->actual = 0;

 if (!ep_index(hsep) && _req->length == 0) {
  hsudc->ep0state = WAIT_FOR_SETUP;
  s3c_hsudc_complete_request(hsep, hsreq, 0);
  spin_unlock_irqrestore(&hsudc->lock, flags);
  return 0;
 }

 if (list_empty(&hsep->queue) && !hsep->stopped) {
  offset = (ep_index(hsep)) ? S3C_ESR : S3C_EP0SR;
  if (ep_is_in(hsep)) {
   csr = readl(hsudc->regs + offset);
   if (!(csr & S3C_ESR_TX_SUCCESS) &&
    (s3c_hsudc_write_fifo(hsep, hsreq) == 1))
    hsreq = ((void*)0);
  } else {
   csr = readl(hsudc->regs + offset);
   if ((csr & S3C_ESR_RX_SUCCESS)
       && (s3c_hsudc_read_fifo(hsep, hsreq) == 1))
    hsreq = ((void*)0);
  }
 }

 if (hsreq)
  list_add_tail(&hsreq->queue, &hsep->queue);

 spin_unlock_irqrestore(&hsudc->lock, flags);
 return 0;
}
