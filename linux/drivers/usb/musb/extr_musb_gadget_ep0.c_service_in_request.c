
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int bRequestType; int bRequest; } ;
struct musb {int dummy; } ;



 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 int service_tx_status_request (struct musb*,struct usb_ctrlrequest const*) ;

__attribute__((used)) static int
service_in_request(struct musb *musb, const struct usb_ctrlrequest *ctrlrequest)
{
 int handled = 0;

 if ((ctrlrequest->bRequestType & USB_TYPE_MASK)
   == USB_TYPE_STANDARD) {
  switch (ctrlrequest->bRequest) {
  case 128:
   handled = service_tx_status_request(musb,
     ctrlrequest);
   break;



  default:
   break;
  }
 }
 return handled;
}
