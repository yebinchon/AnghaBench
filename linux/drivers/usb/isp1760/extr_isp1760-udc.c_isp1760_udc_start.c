
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {scalar_t__ max_speed; int function; } ;
struct usb_gadget {int dummy; } ;
struct isp1760_udc {int connected; TYPE_1__* isp; int gadget; scalar_t__ devstatus; int lock; struct usb_gadget_driver* driver; } ;
struct TYPE_2__ {int dev; } ;


 int DC_GLINTENA ;
 int DC_MODE ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ USB_SPEED_FULL ;
 int USB_STATE_ATTACHED ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*) ;
 struct isp1760_udc* gadget_to_udc (struct usb_gadget*) ;
 int isp1760_udc_init_hw (struct isp1760_udc*) ;
 int isp1760_udc_write (struct isp1760_udc*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_gadget_set_state (int *,int ) ;

__attribute__((used)) static int isp1760_udc_start(struct usb_gadget *gadget,
        struct usb_gadget_driver *driver)
{
 struct isp1760_udc *udc = gadget_to_udc(gadget);
 unsigned long flags;


 if (driver->max_speed < USB_SPEED_FULL) {
  dev_err(udc->isp->dev, "Invalid gadget driver\n");
  return -EINVAL;
 }

 spin_lock_irqsave(&udc->lock, flags);

 if (udc->driver) {
  dev_err(udc->isp->dev, "UDC already has a gadget driver\n");
  spin_unlock_irqrestore(&udc->lock, flags);
  return -EBUSY;
 }

 udc->driver = driver;

 spin_unlock_irqrestore(&udc->lock, flags);

 dev_dbg(udc->isp->dev, "starting UDC with driver %s\n",
  driver->function);

 udc->devstatus = 0;
 udc->connected = 1;

 usb_gadget_set_state(&udc->gadget, USB_STATE_ATTACHED);


 isp1760_udc_write(udc, DC_MODE, DC_GLINTENA);

 isp1760_udc_init_hw(udc);

 dev_dbg(udc->isp->dev, "UDC started with driver %s\n",
  driver->function);

 return 0;
}
