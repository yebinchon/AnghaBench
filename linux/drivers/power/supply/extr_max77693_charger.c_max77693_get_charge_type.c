
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 unsigned int CHG_DETAILS_01_CHG_MASK ;
 unsigned int CHG_DETAILS_01_CHG_SHIFT ;
 int MAX77693_CHG_REG_CHG_DETAILS_01 ;
 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_NONE ;
 int POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;
 int POWER_SUPPLY_CHARGE_TYPE_UNKNOWN ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int max77693_get_charge_type(struct regmap *regmap, int *val)
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




 case 129:
  *val = POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
  break;
 case 138:
 case 137:

 case 136:
  *val = POWER_SUPPLY_CHARGE_TYPE_FAST;
  break;
 case 139:
 case 130:
 case 131:
 case 135:
 case 134:
 case 128:
  *val = POWER_SUPPLY_CHARGE_TYPE_NONE;
  break;
 case 132:
 default:
  *val = POWER_SUPPLY_CHARGE_TYPE_UNKNOWN;
 }

 return 0;
}
