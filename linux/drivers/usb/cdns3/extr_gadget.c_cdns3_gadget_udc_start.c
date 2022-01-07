
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int max_speed; } ;
struct usb_gadget {int max_speed; } ;
struct cdns3_device {int lock; int dev; TYPE_1__* regs; struct usb_gadget_driver* gadget_driver; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_2__ {int usb_conf; } ;


 int USB_CONF_SFORCE_FS ;
 int USB_CONF_USB3DIS ;




 int cdns3_gadget_config (struct cdns3_device*) ;
 int dev_err (int ,char*,int) ;
 struct cdns3_device* gadget_to_cdns3_device (struct usb_gadget*) ;
 int min (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int *) ;

__attribute__((used)) static int cdns3_gadget_udc_start(struct usb_gadget *gadget,
      struct usb_gadget_driver *driver)
{
 struct cdns3_device *priv_dev = gadget_to_cdns3_device(gadget);
 unsigned long flags;
 enum usb_device_speed max_speed = driver->max_speed;

 spin_lock_irqsave(&priv_dev->lock, flags);
 priv_dev->gadget_driver = driver;


 max_speed = min(driver->max_speed, gadget->max_speed);

 switch (max_speed) {
 case 131:
  writel(USB_CONF_SFORCE_FS, &priv_dev->regs->usb_conf);
  writel(USB_CONF_USB3DIS, &priv_dev->regs->usb_conf);
  break;
 case 130:
  writel(USB_CONF_USB3DIS, &priv_dev->regs->usb_conf);
  break;
 case 129:
  break;
 default:
  dev_err(priv_dev->dev,
   "invalid maximum_speed parameter %d\n",
   max_speed);

 case 128:

  max_speed = 129;
  break;
 }

 cdns3_gadget_config(priv_dev);
 spin_unlock_irqrestore(&priv_dev->lock, flags);
 return 0;
}
