
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 unsigned int CHG_DETAILS_01_CHG_MASK ;
 unsigned int CHG_DETAILS_01_CHG_SHIFT ;
 int MAX77693_CHG_REG_CHG_DETAILS_01 ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int max77693_get_charger_state(struct regmap *regmap, int *val)
{
 int ret;
 unsigned int data;

 ret = regmap_read(regmap, MAX77693_CHG_REG_CHG_DETAILS_01, &data);
 if (ret < 0)
  return ret;

 data &= CHG_DETAILS_01_CHG_MASK;
 data >>= CHG_DETAILS_01_CHG_SHIFT;

 switch (data) {
 case 133:
 case 138:
 case 137:
 case 129:

 case 136:
  *val = POWER_SUPPLY_STATUS_CHARGING;
  break;
 case 139:
  *val = POWER_SUPPLY_STATUS_FULL;
  break;
 case 130:
 case 131:
  *val = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;
 case 135:
 case 134:
 case 128:
  *val = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 case 132:
 default:
  *val = POWER_SUPPLY_STATUS_UNKNOWN;
 }

 return 0;
}
