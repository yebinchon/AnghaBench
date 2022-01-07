
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xusb_udc {int dev; struct xusb_req* req; struct xusb_ep* ep; } ;
struct TYPE_2__ {scalar_t__ length; } ;
struct xusb_req {TYPE_1__ usb_req; } ;
struct xusb_ep {int dummy; } ;


 int __xudc_ep0_queue (struct xusb_ep*,struct xusb_req*) ;
 int dev_err (int ,char*) ;
 int xudc_ep0_stall (struct xusb_udc*) ;

__attribute__((used)) static void xudc_setaddress(struct xusb_udc *udc)
{
 struct xusb_ep *ep0 = &udc->ep[0];
 struct xusb_req *req = udc->req;
 int ret;

 req->usb_req.length = 0;
 ret = __xudc_ep0_queue(ep0, req);
 if (ret == 0)
  return;

 dev_err(udc->dev, "Can't respond to SET ADDRESS request\n");
 xudc_ep0_stall(udc);
}
