
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp20x_usb_power {int regmap; int axp20x_id; } ;


 int AXP20X_VBUS_CLIMIT_MASK ;
 int AXP20X_VBUS_IPSOUT_MGMT ;
 int AXP221_ID ;
 int EINVAL ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int axp20x_usb_power_set_current_max(struct axp20x_usb_power *power,
         int intval)
{
 int val;

 switch (intval) {
 case 100000:
  if (power->axp20x_id == AXP221_ID)
   return -EINVAL;

 case 500000:
 case 900000:
  val = (900000 - intval) / 400000;
  return regmap_update_bits(power->regmap,
       AXP20X_VBUS_IPSOUT_MGMT,
       AXP20X_VBUS_CLIMIT_MASK, val);
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
