
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp20x_usb_power {int regmap; } ;


 unsigned int AXP20X_VBUS_CLIMIT_MASK ;
 int AXP20X_VBUS_IPSOUT_MGMT ;




 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int axp813_get_current_max(struct axp20x_usb_power *power, int *val)
{
 unsigned int v;
 int ret = regmap_read(power->regmap, AXP20X_VBUS_IPSOUT_MGMT, &v);

 if (ret)
  return ret;

 switch (v & AXP20X_VBUS_CLIMIT_MASK) {
 case 128:
  *val = 900000;
  break;
 case 131:
  *val = 1500000;
  break;
 case 130:
  *val = 2000000;
  break;
 case 129:
  *val = 2500000;
  break;
 }
 return 0;
}
