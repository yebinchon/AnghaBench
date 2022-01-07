
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_ctrlrequest {int bRequestType; int bRequest; scalar_t__ wLength; int wValue; int wIndex; } ;
struct dwc2_hsotg_ep {int dir_in; } ;
struct dwc2_hsotg {int connected; int delayed_status; int dev; int lock; int gadget; TYPE_1__* driver; int ep0_state; struct dwc2_hsotg_ep** eps_out; } ;
struct TYPE_2__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int DCFG ;
 int DCFG_DEVADDR_MASK ;
 int DCFG_DEVADDR_SHIFT ;
 int DWC2_EP0_DATA_IN ;
 int DWC2_EP0_DATA_OUT ;
 int DWC2_EP0_STATUS_IN ;
 int USB_DIR_IN ;
 int USB_GADGET_DELAYED_STATUS ;




 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_info (int ,char*,int ) ;
 int dwc2_hsotg_process_req_feature (struct dwc2_hsotg*,struct usb_ctrlrequest*) ;
 int dwc2_hsotg_process_req_status (struct dwc2_hsotg*,struct usb_ctrlrequest*) ;
 int dwc2_hsotg_send_reply (struct dwc2_hsotg*,struct dwc2_hsotg_ep*,int *,int ) ;
 int dwc2_hsotg_stall_ep0 (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;
 int le16_to_cpu (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *,struct usb_ctrlrequest*) ;

__attribute__((used)) static void dwc2_hsotg_process_control(struct dwc2_hsotg *hsotg,
           struct usb_ctrlrequest *ctrl)
{
 struct dwc2_hsotg_ep *ep0 = hsotg->eps_out[0];
 int ret = 0;
 u32 dcfg;

 dev_dbg(hsotg->dev,
  "ctrl Type=%02x, Req=%02x, V=%04x, I=%04x, L=%04x\n",
  ctrl->bRequestType, ctrl->bRequest, ctrl->wValue,
  ctrl->wIndex, ctrl->wLength);

 if (ctrl->wLength == 0) {
  ep0->dir_in = 1;
  hsotg->ep0_state = DWC2_EP0_STATUS_IN;
 } else if (ctrl->bRequestType & USB_DIR_IN) {
  ep0->dir_in = 1;
  hsotg->ep0_state = DWC2_EP0_DATA_IN;
 } else {
  ep0->dir_in = 0;
  hsotg->ep0_state = DWC2_EP0_DATA_OUT;
 }

 if ((ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD) {
  switch (ctrl->bRequest) {
  case 129:
   hsotg->connected = 1;
   dcfg = dwc2_readl(hsotg, DCFG);
   dcfg &= ~DCFG_DEVADDR_MASK;
   dcfg |= (le16_to_cpu(ctrl->wValue) <<
     DCFG_DEVADDR_SHIFT) & DCFG_DEVADDR_MASK;
   dwc2_writel(hsotg, dcfg, DCFG);

   dev_info(hsotg->dev, "new address %d\n", ctrl->wValue);

   ret = dwc2_hsotg_send_reply(hsotg, ep0, ((void*)0), 0);
   return;

  case 130:
   ret = dwc2_hsotg_process_req_status(hsotg, ctrl);
   break;

  case 131:
  case 128:
   ret = dwc2_hsotg_process_req_feature(hsotg, ctrl);
   break;
  }
 }



 if (ret == 0 && hsotg->driver) {
  spin_unlock(&hsotg->lock);
  ret = hsotg->driver->setup(&hsotg->gadget, ctrl);
  spin_lock(&hsotg->lock);
  if (ret < 0)
   dev_dbg(hsotg->dev, "driver->setup() ret %d\n", ret);
 }

 hsotg->delayed_status = 0;
 if (ret == USB_GADGET_DELAYED_STATUS)
  hsotg->delayed_status = 1;






 if (ret < 0)
  dwc2_hsotg_stall_ep0(hsotg);
}
