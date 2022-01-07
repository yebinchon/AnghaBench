
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int speed; int name; } ;
struct xusb_udc {int lock; scalar_t__ remote_wkp; int addr; int (* write_fn ) (int ,int ,int ) ;TYPE_2__ gadget; struct usb_gadget_driver* driver; int dev; struct xusb_ep* ep; } ;
struct xusb_ep {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct usb_gadget_driver {int max_speed; TYPE_1__ driver; } ;
struct usb_gadget {int dummy; } ;
struct usb_endpoint_descriptor {int dummy; } ;


 int EBUSY ;
 int XUSB_ADDRESS_OFFSET ;
 size_t XUSB_EP_NUMBER_ZERO ;
 int __xudc_ep_enable (struct xusb_ep*,struct usb_endpoint_descriptor const*) ;
 struct usb_endpoint_descriptor config_bulk_out_desc ;
 int dev_err (int ,char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ,int ) ;
 struct xusb_udc* to_udc (struct usb_gadget*) ;

__attribute__((used)) static int xudc_start(struct usb_gadget *gadget,
        struct usb_gadget_driver *driver)
{
 struct xusb_udc *udc = to_udc(gadget);
 struct xusb_ep *ep0 = &udc->ep[XUSB_EP_NUMBER_ZERO];
 const struct usb_endpoint_descriptor *desc = &config_bulk_out_desc;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&udc->lock, flags);

 if (udc->driver) {
  dev_err(udc->dev, "%s is already bound to %s\n",
   udc->gadget.name, udc->driver->driver.name);
  ret = -EBUSY;
  goto err;
 }


 udc->driver = driver;
 udc->gadget.speed = driver->max_speed;


 ret = __xudc_ep_enable(ep0, desc);


 udc->write_fn(udc->addr, XUSB_ADDRESS_OFFSET, 0);
 udc->remote_wkp = 0;
err:
 spin_unlock_irqrestore(&udc->lock, flags);
 return ret;
}
