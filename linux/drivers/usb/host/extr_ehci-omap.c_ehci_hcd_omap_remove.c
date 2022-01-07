
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct omap_hcd {int nports; scalar_t__* phy; } ;
struct TYPE_2__ {scalar_t__ priv; } ;


 struct usb_hcd* dev_get_drvdata (struct device*) ;
 TYPE_1__* hcd_to_ehci (struct usb_hcd*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int usb_phy_shutdown (scalar_t__) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ehci_hcd_omap_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct usb_hcd *hcd = dev_get_drvdata(dev);
 struct omap_hcd *omap = (struct omap_hcd *)hcd_to_ehci(hcd)->priv;
 int i;

 usb_remove_hcd(hcd);

 for (i = 0; i < omap->nports; i++) {
  if (omap->phy[i])
   usb_phy_shutdown(omap->phy[i]);
 }

 usb_put_hcd(hcd);
 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);

 return 0;
}
