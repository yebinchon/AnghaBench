
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int bRequestType; scalar_t__ wLength; scalar_t__ wIndex; int wValue; int bRequest; } ;
struct bcm63xx_udc {int cfg; int dev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_REQ_SET_CONFIGURATION ;
 int bcm63xx_ep0_setup_callback (struct bcm63xx_udc*,struct usb_ctrlrequest*) ;
 int cpu_to_le16 (int ) ;
 int dev_warn_ratelimited (int ,char*,int ) ;

__attribute__((used)) static int bcm63xx_ep0_spoof_set_cfg(struct bcm63xx_udc *udc)
{
 struct usb_ctrlrequest ctrl;
 int rc;

 ctrl.bRequestType = USB_DIR_OUT | USB_RECIP_DEVICE;
 ctrl.bRequest = USB_REQ_SET_CONFIGURATION;
 ctrl.wValue = cpu_to_le16(udc->cfg);
 ctrl.wIndex = 0;
 ctrl.wLength = 0;

 rc = bcm63xx_ep0_setup_callback(udc, &ctrl);
 if (rc < 0) {
  dev_warn_ratelimited(udc->dev,
   "hardware auto-acked bad SET_CONFIGURATION(%d) request\n",
   udc->cfg);
 }
 return rc;
}
