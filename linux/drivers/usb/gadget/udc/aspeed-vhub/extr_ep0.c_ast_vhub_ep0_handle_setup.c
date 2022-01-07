
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_ctrlrequest {int bRequestType; int wLength; int wIndex; int wValue; int bRequest; } ;
struct TYPE_8__ {scalar_t__ state; int dir_in; int ctlstat; int setup; } ;
struct ast_vhub_ep {scalar_t__ d_idx; TYPE_4__ ep0; TYPE_3__* vhub; TYPE_2__* dev; } ;
typedef enum std_req_rc { ____Placeholder_std_req_rc } std_req_rc ;
typedef int crq ;
struct TYPE_7__ {int lock; } ;
struct TYPE_6__ {int gadget; TYPE_1__* driver; } ;
struct TYPE_5__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int EIO ;
 int ENODEV ;
 int EPDBG (struct ast_vhub_ep*,char*,...) ;
 int EPVDBG (struct ast_vhub_ep*,char*) ;
 int USB_DIR_IN ;
 int USB_TYPE_CLASS ;
 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 int VHUB_EP0_CTRL_STALL ;
 int VHUB_EP0_TX_BUFF_RDY ;
 scalar_t__ WARN_ON (int) ;
 int ast_vhub_class_hub_request (struct ast_vhub_ep*,struct usb_ctrlrequest*) ;
 int ast_vhub_nuke (struct ast_vhub_ep*,int ) ;
 int ast_vhub_std_dev_request (struct ast_vhub_ep*,struct usb_ctrlrequest*) ;
 int ast_vhub_std_hub_request (struct ast_vhub_ep*,struct usb_ctrlrequest*) ;
 scalar_t__ ep0_state_data ;
 scalar_t__ ep0_state_stall ;
 scalar_t__ ep0_state_status ;
 scalar_t__ ep0_state_token ;
 int le16_to_cpu (int ) ;
 int memcpy_fromio (struct usb_ctrlrequest*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;




 int stub1 (int *,struct usb_ctrlrequest*) ;
 int writel (int ,int ) ;

void ast_vhub_ep0_handle_setup(struct ast_vhub_ep *ep)
{
 struct usb_ctrlrequest crq;
 enum std_req_rc std_req_rc;
 int rc = -ENODEV;

 if (WARN_ON(ep->d_idx != 0))
  return;





 memcpy_fromio(&crq, ep->ep0.setup, sizeof(crq));

 EPDBG(ep, "SETUP packet %02x/%02x/%04x/%04x/%04x [%s] st=%d\n",
       crq.bRequestType, crq.bRequest,
        le16_to_cpu(crq.wValue),
        le16_to_cpu(crq.wIndex),
        le16_to_cpu(crq.wLength),
        (crq.bRequestType & USB_DIR_IN) ? "in" : "out",
        ep->ep0.state);
 if (ep->ep0.state != ep0_state_token &&
     ep->ep0.state != ep0_state_stall) {
  EPDBG(ep, "wrong state\n");
  ast_vhub_nuke(ep, -EIO);
 }


 ep->ep0.state = ep0_state_data;
 ep->ep0.dir_in = !!(crq.bRequestType & USB_DIR_IN);


 std_req_rc = 129;
 if (ep->dev == ((void*)0)) {
  if ((crq.bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD)
   std_req_rc = ast_vhub_std_hub_request(ep, &crq);
  else if ((crq.bRequestType & USB_TYPE_MASK) == USB_TYPE_CLASS)
   std_req_rc = ast_vhub_class_hub_request(ep, &crq);
  else
   std_req_rc = 128;
 } else if ((crq.bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD)
  std_req_rc = ast_vhub_std_dev_request(ep, &crq);


 switch(std_req_rc) {
 case 131:
  goto complete;
 case 128:
  goto stall;
 case 129:
  break;
 case 130:
  return;
 }


 if (WARN_ON(!ep->dev))
  goto stall;
 if (ep->dev->driver) {
  EPDBG(ep, "forwarding to gadget...\n");
  spin_unlock(&ep->vhub->lock);
  rc = ep->dev->driver->setup(&ep->dev->gadget, &crq);
  spin_lock(&ep->vhub->lock);
  EPDBG(ep, "driver returned %d\n", rc);
 } else {
  EPDBG(ep, "no gadget for request !\n");
 }
 if (rc >= 0)
  return;

 stall:
 EPDBG(ep, "stalling\n");
 writel(VHUB_EP0_CTRL_STALL, ep->ep0.ctlstat);
 ep->ep0.state = ep0_state_stall;
 ep->ep0.dir_in = 0;
 return;

 complete:
 EPVDBG(ep, "sending [in] status with no data\n");
 writel(VHUB_EP0_TX_BUFF_RDY, ep->ep0.ctlstat);
 ep->ep0.state = ep0_state_status;
 ep->ep0.dir_in = 0;
}
