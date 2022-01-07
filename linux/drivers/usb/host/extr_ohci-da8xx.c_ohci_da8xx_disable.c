
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct da8xx_ohci_hcd {int usb11_clk; int usb11_phy; } ;


 int clk_disable_unprepare (int ) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;
 struct da8xx_ohci_hcd* to_da8xx_ohci (struct usb_hcd*) ;

__attribute__((used)) static void ohci_da8xx_disable(struct usb_hcd *hcd)
{
 struct da8xx_ohci_hcd *da8xx_ohci = to_da8xx_ohci(hcd);

 phy_power_off(da8xx_ohci->usb11_phy);
 phy_exit(da8xx_ohci->usb11_phy);
 clk_disable_unprepare(da8xx_ohci->usb11_clk);
}
