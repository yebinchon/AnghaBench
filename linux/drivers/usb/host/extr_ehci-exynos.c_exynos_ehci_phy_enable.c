
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
 int phy_power_on (int ) ;
 struct exynos_ehci_hcd* to_exynos_ehci (struct usb_hcd*) ;

__attribute__((used)) static int exynos_ehci_phy_enable(struct device *dev)
{
 struct usb_hcd *hcd = dev_get_drvdata(dev);
 struct exynos_ehci_hcd *exynos_ehci = to_exynos_ehci(hcd);
 int i;
 int ret = 0;

 for (i = 0; ret == 0 && i < PHY_NUMBER; i++)
  if (!IS_ERR(exynos_ehci->phy[i]))
   ret = phy_power_on(exynos_ehci->phy[i]);
 if (ret)
  for (i--; i >= 0; i--)
   if (!IS_ERR(exynos_ehci->phy[i]))
    phy_power_off(exynos_ehci->phy[i]);

 return ret;
}
