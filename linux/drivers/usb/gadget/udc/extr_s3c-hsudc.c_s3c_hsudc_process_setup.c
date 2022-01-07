
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_ctrlrequest {int bRequestType; int bRequest; int member_0; } ;
struct s3c_hsudc_ep {int bEndpointAddress; int ep; } ;
struct s3c_hsudc {void* ep0state; int dev; int lock; int gadget; TYPE_1__* driver; struct s3c_hsudc_ep* ep; } ;
struct TYPE_2__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 void* DATA_STATE_RECV ;
 void* DATA_STATE_XMIT ;
 int EPROTO ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;



 int USB_REQ_SET_CONFIGURATION ;

 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 void* WAIT_FOR_SETUP ;
 int dev_err (int ,char*,int) ;
 int s3c_hsudc_handle_reqfeat (struct s3c_hsudc*,struct usb_ctrlrequest*) ;
 int s3c_hsudc_nuke_ep (struct s3c_hsudc_ep*,int ) ;
 int s3c_hsudc_process_req_status (struct s3c_hsudc*,struct usb_ctrlrequest*) ;
 int s3c_hsudc_read_setup_pkt (struct s3c_hsudc*,int *) ;
 int s3c_hsudc_set_halt (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *,struct usb_ctrlrequest*) ;

__attribute__((used)) static void s3c_hsudc_process_setup(struct s3c_hsudc *hsudc)
{
 struct s3c_hsudc_ep *hsep = &hsudc->ep[0];
 struct usb_ctrlrequest ctrl = {0};
 int ret;

 s3c_hsudc_nuke_ep(hsep, -EPROTO);
 s3c_hsudc_read_setup_pkt(hsudc, (u16 *)&ctrl);

 if (ctrl.bRequestType & USB_DIR_IN) {
  hsep->bEndpointAddress |= USB_DIR_IN;
  hsudc->ep0state = DATA_STATE_XMIT;
 } else {
  hsep->bEndpointAddress &= ~USB_DIR_IN;
  hsudc->ep0state = DATA_STATE_RECV;
 }

 switch (ctrl.bRequest) {
 case 129:
  if (ctrl.bRequestType != (USB_TYPE_STANDARD | USB_RECIP_DEVICE))
   break;
  hsudc->ep0state = WAIT_FOR_SETUP;
  return;

 case 130:
  if ((ctrl.bRequestType & USB_TYPE_MASK) != USB_TYPE_STANDARD)
   break;
  s3c_hsudc_process_req_status(hsudc, &ctrl);
  return;

 case 128:
 case 131:
  if ((ctrl.bRequestType & USB_TYPE_MASK) != USB_TYPE_STANDARD)
   break;
  s3c_hsudc_handle_reqfeat(hsudc, &ctrl);
  hsudc->ep0state = WAIT_FOR_SETUP;
  return;
 }

 if (hsudc->driver) {
  spin_unlock(&hsudc->lock);
  ret = hsudc->driver->setup(&hsudc->gadget, &ctrl);
  spin_lock(&hsudc->lock);

  if (ctrl.bRequest == USB_REQ_SET_CONFIGURATION) {
   hsep->bEndpointAddress &= ~USB_DIR_IN;
   hsudc->ep0state = WAIT_FOR_SETUP;
  }

  if (ret < 0) {
   dev_err(hsudc->dev, "setup failed, returned %d\n",
      ret);
   s3c_hsudc_set_halt(&hsep->ep, 1);
   hsudc->ep0state = WAIT_FOR_SETUP;
   hsep->bEndpointAddress &= ~USB_DIR_IN;
  }
 }
}
