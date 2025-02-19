
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* usb_phy; } ;
struct tegra_ehci_hcd {int clk; int rst; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ priv; } ;
struct TYPE_3__ {int otg; } ;


 int clk_disable_unprepare (int ) ;
 TYPE_2__* hcd_to_ehci (struct usb_hcd*) ;
 int otg_set_host (int ,int *) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;
 int udelay (int) ;
 int usb_phy_shutdown (TYPE_1__*) ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int tegra_ehci_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);
 struct tegra_ehci_hcd *tegra =
  (struct tegra_ehci_hcd *)hcd_to_ehci(hcd)->priv;

 otg_set_host(hcd->usb_phy->otg, ((void*)0));

 usb_phy_shutdown(hcd->usb_phy);
 usb_remove_hcd(hcd);

 reset_control_assert(tegra->rst);
 udelay(1);

 clk_disable_unprepare(tegra->clk);

 usb_put_hcd(hcd);

 return 0;
}
