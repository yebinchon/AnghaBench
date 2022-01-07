
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct usba_udc {int devstatus; int lock; int gadget; TYPE_1__* driver; int test_mode; } ;
struct TYPE_4__ {int name; } ;
struct usba_ep {TYPE_2__ ep; int state; int index; int fifo; } ;
struct usb_ctrlrequest {int bRequest; int bRequestType; int wLength; int wIndex; int wValue; } ;
typedef int status ;
struct TYPE_3__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int CLR_STA ;
 int DATA_STAGE_IN ;
 int SET_STA ;
 int STATUS_STAGE_ADDR ;
 int STATUS_STAGE_TEST ;
 int USBA_FORCE_STALL ;
 int USBA_TOGGLE_CLR ;
 int USBA_TX_PK_RDY ;
 int USB_DEVICE_REMOTE_WAKEUP ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_RECIP_ENDPOINT ;
 int USB_RECIP_INTERFACE ;




 int cpu_to_le16 (int) ;
 int feature_is_dev_remote_wakeup (struct usb_ctrlrequest*) ;
 int feature_is_dev_test_mode (struct usb_ctrlrequest*) ;
 int feature_is_ep_halt (struct usb_ctrlrequest*) ;
 struct usba_ep* get_ep_by_addr (struct usba_udc*,int ) ;
 int is_stalled (struct usba_udc*,struct usba_ep*) ;
 int le16_to_cpu (int ) ;
 int pr_err (char*,int ,int,int,int ,int ,int ) ;
 int send_status (struct usba_udc*,struct usba_ep*) ;
 int set_address (struct usba_udc*,int ) ;
 int set_protocol_stall (struct usba_udc*,struct usba_ep*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *,struct usb_ctrlrequest*) ;
 int usba_ep_writel (struct usba_ep*,int ,int ) ;
 int writew_relaxed (int ,int ) ;

__attribute__((used)) static int handle_ep0_setup(struct usba_udc *udc, struct usba_ep *ep,
  struct usb_ctrlrequest *crq)
{
 int retval = 0;

 switch (crq->bRequest) {
 case 130: {
  u16 status;

  if (crq->bRequestType == (USB_DIR_IN | USB_RECIP_DEVICE)) {
   status = cpu_to_le16(udc->devstatus);
  } else if (crq->bRequestType
    == (USB_DIR_IN | USB_RECIP_INTERFACE)) {
   status = cpu_to_le16(0);
  } else if (crq->bRequestType
    == (USB_DIR_IN | USB_RECIP_ENDPOINT)) {
   struct usba_ep *target;

   target = get_ep_by_addr(udc, le16_to_cpu(crq->wIndex));
   if (!target)
    goto stall;

   status = 0;
   if (is_stalled(udc, target))
    status |= cpu_to_le16(1);
  } else
   goto delegate;


  if (crq->wLength != cpu_to_le16(sizeof(status)))
   goto stall;
  ep->state = DATA_STAGE_IN;
  writew_relaxed(status, ep->fifo);
  usba_ep_writel(ep, SET_STA, USBA_TX_PK_RDY);
  break;
 }

 case 131: {
  if (crq->bRequestType == USB_RECIP_DEVICE) {
   if (feature_is_dev_remote_wakeup(crq))
    udc->devstatus
     &= ~(1 << USB_DEVICE_REMOTE_WAKEUP);
   else

    goto stall;
  } else if (crq->bRequestType == USB_RECIP_ENDPOINT) {
   struct usba_ep *target;

   if (crq->wLength != cpu_to_le16(0)
     || !feature_is_ep_halt(crq))
    goto stall;
   target = get_ep_by_addr(udc, le16_to_cpu(crq->wIndex));
   if (!target)
    goto stall;

   usba_ep_writel(target, CLR_STA, USBA_FORCE_STALL);
   if (target->index != 0)
    usba_ep_writel(target, CLR_STA,
      USBA_TOGGLE_CLR);
  } else {
   goto delegate;
  }

  send_status(udc, ep);
  break;
 }

 case 128: {
  if (crq->bRequestType == USB_RECIP_DEVICE) {
   if (feature_is_dev_test_mode(crq)) {
    send_status(udc, ep);
    ep->state = STATUS_STAGE_TEST;
    udc->test_mode = le16_to_cpu(crq->wIndex);
    return 0;
   } else if (feature_is_dev_remote_wakeup(crq)) {
    udc->devstatus |= 1 << USB_DEVICE_REMOTE_WAKEUP;
   } else {
    goto stall;
   }
  } else if (crq->bRequestType == USB_RECIP_ENDPOINT) {
   struct usba_ep *target;

   if (crq->wLength != cpu_to_le16(0)
     || !feature_is_ep_halt(crq))
    goto stall;

   target = get_ep_by_addr(udc, le16_to_cpu(crq->wIndex));
   if (!target)
    goto stall;

   usba_ep_writel(target, SET_STA, USBA_FORCE_STALL);
  } else
   goto delegate;

  send_status(udc, ep);
  break;
 }

 case 129:
  if (crq->bRequestType != (USB_DIR_OUT | USB_RECIP_DEVICE))
   goto delegate;

  set_address(udc, le16_to_cpu(crq->wValue));
  send_status(udc, ep);
  ep->state = STATUS_STAGE_ADDR;
  break;

 default:
delegate:
  spin_unlock(&udc->lock);
  retval = udc->driver->setup(&udc->gadget, crq);
  spin_lock(&udc->lock);
 }

 return retval;

stall:
 pr_err("udc: %s: Invalid setup request: %02x.%02x v%04x i%04x l%d, "
  "halting endpoint...\n",
  ep->ep.name, crq->bRequestType, crq->bRequest,
  le16_to_cpu(crq->wValue), le16_to_cpu(crq->wIndex),
  le16_to_cpu(crq->wLength));
 set_protocol_stall(udc, ep);
 return -1;
}
