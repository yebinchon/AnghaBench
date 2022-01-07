
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int bRequestType; int wIndex; } ;
struct xusb_udc {int (* read_fn ) (scalar_t__) ;int dev; TYPE_1__ setup; scalar_t__ addr; struct xusb_ep* ep; int remote_wkp; struct xusb_req* req; } ;
struct TYPE_4__ {int length; scalar_t__ buf; } ;
struct xusb_req {TYPE_2__ usb_req; } ;
struct xusb_ep {int is_in; scalar_t__ offset; } ;


 int USB_DEVICE_REMOTE_WAKEUP ;
 int USB_DEVICE_SELF_POWERED ;
 int USB_DIR_IN ;
 int USB_ENDPOINT_HALT ;
 int USB_ENDPOINT_NUMBER_MASK ;



 int USB_RECIP_MASK ;
 int XUSB_EP_CFG_STALL_MASK ;
 int __xudc_ep0_queue (struct xusb_ep*,struct xusb_req*) ;
 int cpu_to_le16 (int) ;
 int dev_err (int ,char*) ;
 int stub1 (scalar_t__) ;
 int xudc_ep0_stall (struct xusb_udc*) ;

__attribute__((used)) static void xudc_getstatus(struct xusb_udc *udc)
{
 struct xusb_ep *ep0 = &udc->ep[0];
 struct xusb_req *req = udc->req;
 struct xusb_ep *target_ep;
 u16 status = 0;
 u32 epcfgreg;
 int epnum;
 u32 halt;
 int ret;

 switch (udc->setup.bRequestType & USB_RECIP_MASK) {
 case 130:

  status = 1 << USB_DEVICE_SELF_POWERED;
  if (udc->remote_wkp)
   status |= (1 << USB_DEVICE_REMOTE_WAKEUP);
  break;
 case 128:
  break;
 case 129:
  epnum = udc->setup.wIndex & USB_ENDPOINT_NUMBER_MASK;
  target_ep = &udc->ep[epnum];
  epcfgreg = udc->read_fn(udc->addr + target_ep->offset);
  halt = epcfgreg & XUSB_EP_CFG_STALL_MASK;
  if (udc->setup.wIndex & USB_DIR_IN) {
   if (!target_ep->is_in)
    goto stall;
  } else {
   if (target_ep->is_in)
    goto stall;
  }
  if (halt)
   status = 1 << USB_ENDPOINT_HALT;
  break;
 default:
  goto stall;
 }

 req->usb_req.length = 2;
 *(u16 *)req->usb_req.buf = cpu_to_le16(status);
 ret = __xudc_ep0_queue(ep0, req);
 if (ret == 0)
  return;
stall:
 dev_err(udc->dev, "Can't respond to getstatus request\n");
 xudc_ep0_stall(udc);
}
