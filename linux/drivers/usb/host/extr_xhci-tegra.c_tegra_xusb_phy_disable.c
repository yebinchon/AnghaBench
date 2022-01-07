
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb {unsigned int num_phys; int * phys; } ;


 int phy_exit (int ) ;
 int phy_power_off (int ) ;

__attribute__((used)) static void tegra_xusb_phy_disable(struct tegra_xusb *tegra)
{
 unsigned int i;

 for (i = 0; i < tegra->num_phys; i++) {
  phy_power_off(tegra->phys[i]);
  phy_exit(tegra->phys[i]);
 }
}
