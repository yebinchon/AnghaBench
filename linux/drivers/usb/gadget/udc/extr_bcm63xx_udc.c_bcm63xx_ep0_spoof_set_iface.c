
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int bRequestType; scalar_t__ wLength; void* wIndex; void* wValue; int bRequest; } ;
struct bcm63xx_udc {int alt_iface; int iface; int dev; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_SET_INTERFACE ;
 int bcm63xx_ep0_setup_callback (struct bcm63xx_udc*,struct usb_ctrlrequest*) ;
 void* cpu_to_le16 (int ) ;
 int dev_warn_ratelimited (int ,char*,int ,int ) ;

__attribute__((used)) static int bcm63xx_ep0_spoof_set_iface(struct bcm63xx_udc *udc)
{
 struct usb_ctrlrequest ctrl;
 int rc;

 ctrl.bRequestType = USB_DIR_OUT | USB_RECIP_INTERFACE;
 ctrl.bRequest = USB_REQ_SET_INTERFACE;
 ctrl.wValue = cpu_to_le16(udc->alt_iface);
 ctrl.wIndex = cpu_to_le16(udc->iface);
 ctrl.wLength = 0;

 rc = bcm63xx_ep0_setup_callback(udc, &ctrl);
 if (rc < 0) {
  dev_warn_ratelimited(udc->dev,
   "hardware auto-acked bad SET_INTERFACE(%d,%d) request\n",
   udc->iface, udc->alt_iface);
 }
 return rc;
}
