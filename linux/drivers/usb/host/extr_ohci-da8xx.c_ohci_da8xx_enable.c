
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct da8xx_ohci_hcd {int usb11_clk; int usb11_phy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int phy_exit (int ) ;
 int phy_init (int ) ;
 int phy_power_on (int ) ;
 struct da8xx_ohci_hcd* to_da8xx_ohci (struct usb_hcd*) ;

__attribute__((used)) static int ohci_da8xx_enable(struct usb_hcd *hcd)
{
 struct da8xx_ohci_hcd *da8xx_ohci = to_da8xx_ohci(hcd);
 int ret;

 ret = clk_prepare_enable(da8xx_ohci->usb11_clk);
 if (ret)
  return ret;

 ret = phy_init(da8xx_ohci->usb11_phy);
 if (ret)
  goto err_phy_init;

 ret = phy_power_on(da8xx_ohci->usb11_phy);
 if (ret)
  goto err_phy_power_on;

 return 0;

err_phy_power_on:
 phy_exit(da8xx_ohci->usb11_phy);
err_phy_init:
 clk_disable_unprepare(da8xx_ohci->usb11_clk);

 return ret;
}
