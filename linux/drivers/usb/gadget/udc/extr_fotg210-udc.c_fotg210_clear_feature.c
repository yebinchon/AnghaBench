
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {size_t wIndex; int bRequestType; } ;
struct fotg210_udc {struct fotg210_ep** ep; } ;
struct fotg210_ep {int ep; int stall; int wedged; } ;


 size_t USB_ENDPOINT_NUMBER_MASK ;



 int USB_RECIP_MASK ;
 int fotg210_request_error (struct fotg210_udc*) ;
 int fotg210_set_cxdone (struct fotg210_udc*) ;
 int fotg210_set_halt_and_wedge (int *,int ,int ) ;

__attribute__((used)) static void fotg210_clear_feature(struct fotg210_udc *fotg210,
    struct usb_ctrlrequest *ctrl)
{
 struct fotg210_ep *ep =
  fotg210->ep[ctrl->wIndex & USB_ENDPOINT_NUMBER_MASK];

 switch (ctrl->bRequestType & USB_RECIP_MASK) {
 case 130:
  fotg210_set_cxdone(fotg210);
  break;
 case 128:
  fotg210_set_cxdone(fotg210);
  break;
 case 129:
  if (ctrl->wIndex & USB_ENDPOINT_NUMBER_MASK) {
   if (ep->wedged) {
    fotg210_set_cxdone(fotg210);
    break;
   }
   if (ep->stall)
    fotg210_set_halt_and_wedge(&ep->ep, 0, 0);
  }
  fotg210_set_cxdone(fotg210);
  break;
 default:
  fotg210_request_error(fotg210);
  break;
 }
}
