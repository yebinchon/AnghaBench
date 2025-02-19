
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct usb_ohci_pdata {int (* power_off ) (struct platform_device*) ;} ;
struct usb_hcd {int dummy; } ;
struct TYPE_5__ {int * platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ohci_platform_priv {scalar_t__* clks; int resets; } ;


 int OHCI_MAX_CLKS ;
 int clk_put (scalar_t__) ;
 struct usb_ohci_pdata* dev_get_platdata (TYPE_1__*) ;
 struct ohci_platform_priv* hcd_to_ohci_priv (struct usb_hcd*) ;
 struct usb_ohci_pdata ohci_platform_defaults ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_get_sync (TYPE_1__*) ;
 int pm_runtime_put_sync (TYPE_1__*) ;
 int reset_control_assert (int ) ;
 int stub1 (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_platform_remove(struct platform_device *dev)
{
 struct usb_hcd *hcd = platform_get_drvdata(dev);
 struct usb_ohci_pdata *pdata = dev_get_platdata(&dev->dev);
 struct ohci_platform_priv *priv = hcd_to_ohci_priv(hcd);
 int clk;

 pm_runtime_get_sync(&dev->dev);
 usb_remove_hcd(hcd);

 if (pdata->power_off)
  pdata->power_off(dev);

 reset_control_assert(priv->resets);

 for (clk = 0; clk < OHCI_MAX_CLKS && priv->clks[clk]; clk++)
  clk_put(priv->clks[clk]);

 usb_put_hcd(hcd);

 pm_runtime_put_sync(&dev->dev);
 pm_runtime_disable(&dev->dev);

 if (pdata == &ohci_platform_defaults)
  dev->dev.platform_data = ((void*)0);

 return 0;
}
