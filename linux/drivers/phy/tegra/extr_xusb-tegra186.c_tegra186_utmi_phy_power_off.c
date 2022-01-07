
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;


 int tegra_phy_xusb_utmi_pad_power_down (struct phy*) ;

__attribute__((used)) static int tegra186_utmi_phy_power_off(struct phy *phy)
{

 tegra_phy_xusb_utmi_pad_power_down(phy);

 return 0;
}
