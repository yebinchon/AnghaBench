
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_ctrlrequest {scalar_t__ wLength; int bRequestType; int bRequest; } ;
struct nbu2ss_udc {scalar_t__ ep0state; int lock; struct usb_ctrlrequest ctrl; int gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int EINVAL ;
 scalar_t__ EP0_IDLE ;
 scalar_t__ EP0_IN_DATA_PHASE ;
 scalar_t__ EP0_IN_STATUS_PHASE ;
 scalar_t__ EP0_OUT_DATA_PHASE ;
 int EP0_send_NULL (struct nbu2ss_udc*,int) ;
 int USB_DIR_IN ;





 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 int _nbu2ss_read_request_data (struct nbu2ss_udc*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int std_req_clear_feature (struct nbu2ss_udc*) ;
 int std_req_get_status (struct nbu2ss_udc*) ;
 int std_req_set_address (struct nbu2ss_udc*) ;
 int std_req_set_configuration (struct nbu2ss_udc*) ;
 int std_req_set_feature (struct nbu2ss_udc*) ;
 int stub1 (int *,struct usb_ctrlrequest*) ;

__attribute__((used)) static inline int _nbu2ss_decode_request(struct nbu2ss_udc *udc)
{
 bool bcall_back = 1;
 int nret = -EINVAL;
 struct usb_ctrlrequest *p_ctrl;

 p_ctrl = &udc->ctrl;
 _nbu2ss_read_request_data(udc, (u32 *)p_ctrl);


 if (p_ctrl->wLength == 0) {
  udc->ep0state = EP0_IN_STATUS_PHASE;

 } else {
  if (p_ctrl->bRequestType & USB_DIR_IN)
   udc->ep0state = EP0_IN_DATA_PHASE;
  else
   udc->ep0state = EP0_OUT_DATA_PHASE;
 }

 if ((p_ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD) {
  switch (p_ctrl->bRequest) {
  case 131:
   nret = std_req_get_status(udc);
   bcall_back = 0;
   break;

  case 132:
   nret = std_req_clear_feature(udc);
   bcall_back = 0;
   break;

  case 128:
   nret = std_req_set_feature(udc);
   bcall_back = 0;
   break;

  case 130:
   nret = std_req_set_address(udc);
   bcall_back = 0;
   break;

  case 129:
   nret = std_req_set_configuration(udc);
   break;

  default:
   break;
  }
 }

 if (!bcall_back) {
  if (udc->ep0state == EP0_IN_STATUS_PHASE) {
   if (nret >= 0) {


    nret = EP0_send_NULL(udc, 1);
   }
  }

 } else {
  spin_unlock(&udc->lock);
  nret = udc->driver->setup(&udc->gadget, &udc->ctrl);
  spin_lock(&udc->lock);
 }

 if (nret < 0)
  udc->ep0state = EP0_IDLE;

 return nret;
}
