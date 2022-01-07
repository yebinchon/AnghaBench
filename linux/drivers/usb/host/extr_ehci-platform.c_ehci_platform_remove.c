
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct usb_ehci_pdata {int (* power_off ) (struct platform_device*) ;} ;
struct TYPE_2__ {int * platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ehci_platform_priv {scalar_t__* clks; int rsts; } ;


 int EHCI_MAX_CLKS ;
 int clk_put (scalar_t__) ;
 struct usb_ehci_pdata* dev_get_platdata (TYPE_1__*) ;
 struct usb_ehci_pdata ehci_platform_defaults ;
 struct ehci_platform_priv* hcd_to_ehci_priv (struct usb_hcd*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;
 int stub1 (struct platform_device*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ehci_platform_remove(struct platform_device *dev)
{
 struct usb_hcd *hcd = platform_get_drvdata(dev);
 struct usb_ehci_pdata *pdata = dev_get_platdata(&dev->dev);
 struct ehci_platform_priv *priv = hcd_to_ehci_priv(hcd);
 int clk;

 usb_remove_hcd(hcd);

 if (pdata->power_off)
  pdata->power_off(dev);

 reset_control_assert(priv->rsts);

 for (clk = 0; clk < EHCI_MAX_CLKS && priv->clks[clk]; clk++)
  clk_put(priv->clks[clk]);

 usb_put_hcd(hcd);

 if (pdata == &ehci_platform_defaults)
  dev->dev.platform_data = ((void*)0);

 return 0;
}
