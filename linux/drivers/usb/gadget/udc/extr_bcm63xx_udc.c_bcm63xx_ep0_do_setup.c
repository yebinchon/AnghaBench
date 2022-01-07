
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int bRequestType; int wLength; } ;
struct bcm63xx_udc {int * bep; int dev; scalar_t__ ep0_ctrl_buf; } ;
typedef enum bcm63xx_ep0_state { ____Placeholder_bcm63xx_ep0_state } bcm63xx_ep0_state ;


 int EP0_IDLE ;
 int EP0_IN_DATA_PHASE_SETUP ;
 int EP0_OUT_DATA_PHASE_SETUP ;
 int EP0_REQUEUE ;
 int USB_DIR_IN ;
 int bcm63xx_ep0_read_complete (struct bcm63xx_udc*) ;
 int bcm63xx_ep0_setup_callback (struct bcm63xx_udc*,struct usb_ctrlrequest*) ;
 int bcm63xx_set_stall (struct bcm63xx_udc*,int *,int) ;
 int dev_err (int ,char*) ;
 int dev_warn_ratelimited (int ,char*,int) ;

__attribute__((used)) static enum bcm63xx_ep0_state bcm63xx_ep0_do_setup(struct bcm63xx_udc *udc)
{
 int rc;
 struct usb_ctrlrequest *ctrl = (void *)udc->ep0_ctrl_buf;

 rc = bcm63xx_ep0_read_complete(udc);

 if (rc < 0) {
  dev_err(udc->dev, "missing SETUP packet\n");
  return EP0_IDLE;
 }






 if (rc == 0)
  return EP0_REQUEUE;


 if (rc != sizeof(*ctrl)) {
  dev_warn_ratelimited(udc->dev,
   "malformed SETUP packet (%d bytes)\n", rc);
  return EP0_REQUEUE;
 }


 rc = bcm63xx_ep0_setup_callback(udc, ctrl);
 if (rc < 0) {
  bcm63xx_set_stall(udc, &udc->bep[0], 1);
  return EP0_REQUEUE;
 }

 if (!ctrl->wLength)
  return EP0_REQUEUE;
 else if (ctrl->bRequestType & USB_DIR_IN)
  return EP0_IN_DATA_PHASE_SETUP;
 else
  return EP0_OUT_DATA_PHASE_SETUP;
}
