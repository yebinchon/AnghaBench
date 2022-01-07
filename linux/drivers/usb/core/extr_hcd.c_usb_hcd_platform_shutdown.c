
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int (* shutdown ) (struct usb_hcd*) ;} ;


 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_get_sync (int *) ;
 int stub1 (struct usb_hcd*) ;

void
usb_hcd_platform_shutdown(struct platform_device *dev)
{
 struct usb_hcd *hcd = platform_get_drvdata(dev);


 pm_runtime_get_sync(&dev->dev);

 if (hcd->driver->shutdown)
  hcd->driver->shutdown(hcd);
}
