
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;
struct ohci_platform_priv {scalar_t__* clks; } ;


 int OHCI_MAX_CLKS ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 struct ohci_platform_priv* hcd_to_ohci_priv (struct usb_hcd*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ohci_platform_power_on(struct platform_device *dev)
{
 struct usb_hcd *hcd = platform_get_drvdata(dev);
 struct ohci_platform_priv *priv = hcd_to_ohci_priv(hcd);
 int clk, ret;

 for (clk = 0; clk < OHCI_MAX_CLKS && priv->clks[clk]; clk++) {
  ret = clk_prepare_enable(priv->clks[clk]);
  if (ret)
   goto err_disable_clks;
 }

 return 0;

err_disable_clks:
 while (--clk >= 0)
  clk_disable_unprepare(priv->clks[clk]);

 return ret;
}
