
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct exynos_ehci_hcd {int clk; int of_node; } ;


 int clk_disable_unprepare (int ) ;
 int exynos_ehci_phy_disable (TYPE_1__*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 struct exynos_ehci_hcd* to_exynos_ehci (struct usb_hcd*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int exynos_ehci_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);
 struct exynos_ehci_hcd *exynos_ehci = to_exynos_ehci(hcd);

 pdev->dev.of_node = exynos_ehci->of_node;

 usb_remove_hcd(hcd);

 exynos_ehci_phy_disable(&pdev->dev);

 clk_disable_unprepare(exynos_ehci->clk);

 usb_put_hcd(hcd);

 return 0;
}
