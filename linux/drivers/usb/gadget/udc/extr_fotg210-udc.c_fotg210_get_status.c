
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct usb_ctrlrequest {int bRequestType; size_t wIndex; } ;
struct TYPE_3__ {int ep0; } ;
struct fotg210_udc {int ep0_data; int lock; TYPE_2__* ep0_req; TYPE_1__ gadget; int * ep; } ;
struct TYPE_4__ {int* buf; int length; } ;


 int GFP_ATOMIC ;
 int USB_DEVICE_SELF_POWERED ;
 int USB_ENDPOINT_HALT ;
 size_t USB_ENDPOINT_NUMBER_MASK ;



 int USB_RECIP_MASK ;
 int fotg210_ep_queue (int ,TYPE_2__*,int ) ;
 int fotg210_is_epnstall (int ) ;
 int fotg210_request_error (struct fotg210_udc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fotg210_get_status(struct fotg210_udc *fotg210,
    struct usb_ctrlrequest *ctrl)
{
 u8 epnum;

 switch (ctrl->bRequestType & USB_RECIP_MASK) {
 case 130:
  fotg210->ep0_data = 1 << USB_DEVICE_SELF_POWERED;
  break;
 case 128:
  fotg210->ep0_data = 0;
  break;
 case 129:
  epnum = ctrl->wIndex & USB_ENDPOINT_NUMBER_MASK;
  if (epnum)
   fotg210->ep0_data =
    fotg210_is_epnstall(fotg210->ep[epnum])
    << USB_ENDPOINT_HALT;
  else
   fotg210_request_error(fotg210);
  break;

 default:
  fotg210_request_error(fotg210);
  return;
 }

 fotg210->ep0_req->buf = &fotg210->ep0_data;
 fotg210->ep0_req->length = 2;

 spin_unlock(&fotg210->lock);
 fotg210_ep_queue(fotg210->gadget.ep0, fotg210->ep0_req, GFP_ATOMIC);
 spin_lock(&fotg210->lock);
}
