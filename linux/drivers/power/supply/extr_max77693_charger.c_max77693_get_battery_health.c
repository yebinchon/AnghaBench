
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 unsigned int CHG_DETAILS_01_BAT_MASK ;
 unsigned int CHG_DETAILS_01_BAT_SHIFT ;
 int MAX77693_CHG_REG_CHG_DETAILS_01 ;
 int POWER_SUPPLY_HEALTH_DEAD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERVOLTAGE ;
 int POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE ;
 int POWER_SUPPLY_HEALTH_UNKNOWN ;
 int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int max77693_get_battery_health(struct regmap *regmap, int *val)
{
 int ret;
 unsigned int data;

 ret = regmap_read(regmap, MAX77693_CHG_REG_CHG_DETAILS_01, &data);
 if (ret < 0)
  return ret;

 data &= CHG_DETAILS_01_BAT_MASK;
 data >>= CHG_DETAILS_01_BAT_SHIFT;

 switch (data) {
 case 133:
  *val = POWER_SUPPLY_HEALTH_DEAD;
  break;
 case 130:
 case 135:
 case 134:
  *val = POWER_SUPPLY_HEALTH_GOOD;
  break;
 case 128:




  *val = POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE;
  break;
 case 131:
  *val = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
  break;
 case 132:
  *val = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  break;
 case 129:
 default:
  *val = POWER_SUPPLY_HEALTH_UNKNOWN;
  break;
 }

 return 0;
}
