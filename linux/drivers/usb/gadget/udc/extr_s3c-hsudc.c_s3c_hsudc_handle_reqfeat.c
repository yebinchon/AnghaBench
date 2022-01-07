
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct usb_ctrlrequest {scalar_t__ bRequest; size_t wIndex; scalar_t__ bRequestType; int wValue; } ;
struct s3c_hsudc_ep {int ep; int wedge; } ;
struct s3c_hsudc {struct s3c_hsudc_ep* ep; } ;


 int ENOENT ;

 size_t USB_ENDPOINT_NUMBER_MASK ;
 scalar_t__ USB_RECIP_ENDPOINT ;
 scalar_t__ USB_REQ_SET_FEATURE ;
 int le16_to_cpu (int ) ;
 int s3c_hsudc_set_halt (int *,int) ;

__attribute__((used)) static int s3c_hsudc_handle_reqfeat(struct s3c_hsudc *hsudc,
     struct usb_ctrlrequest *ctrl)
{
 struct s3c_hsudc_ep *hsep;
 bool set = (ctrl->bRequest == USB_REQ_SET_FEATURE);
 u8 ep_num = ctrl->wIndex & USB_ENDPOINT_NUMBER_MASK;

 if (ctrl->bRequestType == USB_RECIP_ENDPOINT) {
  hsep = &hsudc->ep[ep_num];
  switch (le16_to_cpu(ctrl->wValue)) {
  case 128:
   if (set || !hsep->wedge)
    s3c_hsudc_set_halt(&hsep->ep, set);
   return 0;
  }
 }

 return -ENOENT;
}
