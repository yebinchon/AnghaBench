
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct exynos_ohci_hcd {int * phy; } ;
struct device {int dummy; } ;


 int IS_ERR (int ) ;
 int PHY_NUMBER ;
 struct usb_hcd* dev_get_drvdata (struct device*) ;
 int phy_power_off (int ) ;
 struct exynos_ohci_hcd* to_exynos_ohci (struct usb_hcd*) ;

__attribute__((used)) static void exynos_ohci_phy_disable(struct device *dev)
{
 struct usb_hcd *hcd = dev_get_drvdata(dev);
 struct exynos_ohci_hcd *exynos_ohci = to_exynos_ohci(hcd);
 int i;

 for (i = 0; i < PHY_NUMBER; i++)
  if (!IS_ERR(exynos_ohci->phy[i]))
   phy_power_off(exynos_ohci->phy[i]);
}
