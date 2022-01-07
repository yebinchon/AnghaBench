
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_usb {int mask; int power_reg; int syscon_phy_power; int power_off; int power_on; int control_dev; } ;


 int omap_control_phy_power (int ,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int omap_usb_phy_power(struct omap_usb *phy, int on)
{
 u32 val;
 int ret;

 if (!phy->syscon_phy_power) {
  omap_control_phy_power(phy->control_dev, on);
  return 0;
 }

 if (on)
  val = phy->power_on;
 else
  val = phy->power_off;

 ret = regmap_update_bits(phy->syscon_phy_power, phy->power_reg,
     phy->mask, val);
 return ret;
}
