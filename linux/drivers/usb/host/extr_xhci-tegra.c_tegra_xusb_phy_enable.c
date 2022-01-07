
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb {unsigned int num_phys; int * phys; } ;


 int phy_exit (int ) ;
 int phy_init (int ) ;
 int phy_power_off (int ) ;
 int phy_power_on (int ) ;

__attribute__((used)) static int tegra_xusb_phy_enable(struct tegra_xusb *tegra)
{
 unsigned int i;
 int err;

 for (i = 0; i < tegra->num_phys; i++) {
  err = phy_init(tegra->phys[i]);
  if (err)
   goto disable_phy;

  err = phy_power_on(tegra->phys[i]);
  if (err) {
   phy_exit(tegra->phys[i]);
   goto disable_phy;
  }
 }

 return 0;

disable_phy:
 while (i--) {
  phy_power_off(tegra->phys[i]);
  phy_exit(tegra->phys[i]);
 }

 return err;
}
