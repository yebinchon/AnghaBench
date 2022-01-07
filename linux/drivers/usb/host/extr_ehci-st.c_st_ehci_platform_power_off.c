
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct st_ehci_platform_priv {scalar_t__* clks; int phy; int rst; int pwr; } ;
struct platform_device {int dummy; } ;


 int USB_MAX_CLKS ;
 int clk_disable_unprepare (scalar_t__) ;
 struct st_ehci_platform_priv* hcd_to_ehci_priv (struct usb_hcd*) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void st_ehci_platform_power_off(struct platform_device *dev)
{
 struct usb_hcd *hcd = platform_get_drvdata(dev);
 struct st_ehci_platform_priv *priv = hcd_to_ehci_priv(hcd);
 int clk;

 reset_control_assert(priv->pwr);

 reset_control_assert(priv->rst);

 phy_power_off(priv->phy);

 phy_exit(priv->phy);

 for (clk = USB_MAX_CLKS - 1; clk >= 0; clk--)
  if (priv->clks[clk])
   clk_disable_unprepare(priv->clks[clk]);

}
