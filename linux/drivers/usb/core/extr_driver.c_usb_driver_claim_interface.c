
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int * driver; } ;
struct usb_interface {int condition; scalar_t__ needs_remote_wakeup; scalar_t__ needs_binding; int authorized; struct device dev; } ;
struct TYPE_2__ {int driver; } ;
struct usb_driver {scalar_t__ supports_autosuspend; TYPE_1__ drvwrap; } ;


 int EBUSY ;
 int ENODEV ;
 int USB_INTERFACE_BOUND ;
 int USB_INTERFACE_UNBOUND ;
 int device_bind_driver (struct device*) ;
 scalar_t__ device_is_registered (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int pm_suspend_ignore_children (struct device*,int) ;
 int usb_set_intfdata (struct usb_interface*,void*) ;

int usb_driver_claim_interface(struct usb_driver *driver,
    struct usb_interface *iface, void *priv)
{
 struct device *dev;
 int retval = 0;

 if (!iface)
  return -ENODEV;

 dev = &iface->dev;
 if (dev->driver)
  return -EBUSY;


 if (!iface->authorized)
  return -ENODEV;

 dev->driver = &driver->drvwrap.driver;
 usb_set_intfdata(iface, priv);
 iface->needs_binding = 0;

 iface->condition = USB_INTERFACE_BOUND;







 pm_suspend_ignore_children(dev, 0);
 if (driver->supports_autosuspend)
  pm_runtime_enable(dev);
 else
  pm_runtime_set_active(dev);




 if (device_is_registered(dev))
  retval = device_bind_driver(dev);

 if (retval) {
  dev->driver = ((void*)0);
  usb_set_intfdata(iface, ((void*)0));
  iface->needs_remote_wakeup = 0;
  iface->condition = USB_INTERFACE_UNBOUND;





  if (driver->supports_autosuspend)
   pm_runtime_disable(dev);
  pm_runtime_set_suspended(dev);
 }

 return retval;
}
