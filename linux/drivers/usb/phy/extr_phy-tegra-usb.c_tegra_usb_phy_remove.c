
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_usb_phy {int u_phy; } ;
struct platform_device {int dummy; } ;


 struct tegra_usb_phy* platform_get_drvdata (struct platform_device*) ;
 int tegra_usb_phy_close (struct tegra_usb_phy*) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int tegra_usb_phy_remove(struct platform_device *pdev)
{
 struct tegra_usb_phy *tegra_phy = platform_get_drvdata(pdev);

 usb_remove_phy(&tegra_phy->u_phy);
 tegra_usb_phy_close(tegra_phy);

 return 0;
}
