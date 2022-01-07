
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; int rh_registered; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int (* shutdown ) (struct usb_hcd*) ;} ;


 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct usb_hcd*) ;

__attribute__((used)) static void mv_ehci_shutdown(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);

 if (!hcd->rh_registered)
  return;

 if (hcd->driver->shutdown)
  hcd->driver->shutdown(hcd);
}
