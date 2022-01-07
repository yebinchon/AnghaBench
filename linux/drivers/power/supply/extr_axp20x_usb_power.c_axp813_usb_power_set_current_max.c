
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp20x_usb_power {int regmap; } ;


 int AXP20X_VBUS_CLIMIT_MASK ;
 int AXP20X_VBUS_IPSOUT_MGMT ;
 int AXP813_VBUS_CLIMIT_900mA ;
 int EINVAL ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int axp813_usb_power_set_current_max(struct axp20x_usb_power *power,
         int intval)
{
 int val;

 switch (intval) {
 case 900000:
  return regmap_update_bits(power->regmap,
       AXP20X_VBUS_IPSOUT_MGMT,
       AXP20X_VBUS_CLIMIT_MASK,
       AXP813_VBUS_CLIMIT_900mA);
 case 1500000:
 case 2000000:
 case 2500000:
  val = (intval - 1000000) / 500000;
  return regmap_update_bits(power->regmap,
       AXP20X_VBUS_IPSOUT_MGMT,
       AXP20X_VBUS_CLIMIT_MASK, val);
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
