
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct exynos_ehci_hcd {int * phy; } ;
struct device {int dummy; } ;


 int IS_ERR (int ) ;
 int PHY_NUMBER ;
 struct usb_hcd* dev_get_drvdata (struct device*) ;
 int phy_power_off (int ) ;
 struct exynos_ehci_hcd* to_exynos_ehci (struct usb_hcd*) ;

__attribute__((used)) static void exynos_ehci_phy_disable(struct device *dev)
{
 struct usb_hcd *hcd = dev_get_drvdata(dev);
 struct exynos_ehci_hcd *exynos_ehci = to_exynos_ehci(hcd);
 int i;

 for (i = 0; i < PHY_NUMBER; i++)
  if (!IS_ERR(exynos_ehci->phy[i]))
   phy_power_off(exynos_ehci->phy[i]);
}
