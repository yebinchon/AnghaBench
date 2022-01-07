
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct usb_ctrlrequest {int bRequestType; int wIndex; } ;
struct fotg210_udc {int * ep; } ;


 size_t USB_ENDPOINT_NUMBER_MASK ;



 int USB_RECIP_MASK ;
 int fotg210_request_error (struct fotg210_udc*) ;
 int fotg210_set_cxdone (struct fotg210_udc*) ;
 int fotg210_set_cxstall (struct fotg210_udc*) ;
 int fotg210_set_epnstall (int ) ;
 size_t le16_to_cpu (int ) ;

__attribute__((used)) static void fotg210_set_feature(struct fotg210_udc *fotg210,
    struct usb_ctrlrequest *ctrl)
{
 switch (ctrl->bRequestType & USB_RECIP_MASK) {
 case 130:
  fotg210_set_cxdone(fotg210);
  break;
 case 128:
  fotg210_set_cxdone(fotg210);
  break;
 case 129: {
  u8 epnum;
  epnum = le16_to_cpu(ctrl->wIndex) & USB_ENDPOINT_NUMBER_MASK;
  if (epnum)
   fotg210_set_epnstall(fotg210->ep[epnum]);
  else
   fotg210_set_cxstall(fotg210);
  fotg210_set_cxdone(fotg210);
  }
  break;
 default:
  fotg210_request_error(fotg210);
  break;
 }
}
