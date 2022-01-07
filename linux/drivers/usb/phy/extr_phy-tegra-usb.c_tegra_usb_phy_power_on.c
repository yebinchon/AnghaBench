
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_usb_phy {scalar_t__ is_ulpi_phy; } ;


 int ulpi_phy_power_on (struct tegra_usb_phy*) ;
 int utmi_phy_power_on (struct tegra_usb_phy*) ;

__attribute__((used)) static int tegra_usb_phy_power_on(struct tegra_usb_phy *phy)
{
 if (phy->is_ulpi_phy)
  return ulpi_phy_power_on(phy);
 else
  return utmi_phy_power_on(phy);
}
