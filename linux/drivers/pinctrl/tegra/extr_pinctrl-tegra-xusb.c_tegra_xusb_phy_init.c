
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_padctl {int dummy; } ;
struct phy {int dummy; } ;


 struct tegra_xusb_padctl* phy_get_drvdata (struct phy*) ;
 int tegra_xusb_padctl_enable (struct tegra_xusb_padctl*) ;

__attribute__((used)) static int tegra_xusb_phy_init(struct phy *phy)
{
 struct tegra_xusb_padctl *padctl = phy_get_drvdata(phy);

 return tegra_xusb_padctl_enable(padctl);
}
