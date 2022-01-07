
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct ltc294x_info {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EPERM ;
 int LTC294X_REG_CHARGE_THR_HIGH_MSB ;
 int LTC294X_REG_CHARGE_THR_LOW_MSB ;



 int ltc294x_set_charge_now (struct ltc294x_info*,int ) ;
 int ltc294x_set_charge_thr (struct ltc294x_info*,int ,int ) ;
 struct ltc294x_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int ltc294x_set_property(struct power_supply *psy,
 enum power_supply_property psp,
 const union power_supply_propval *val)
{
 struct ltc294x_info *info = power_supply_get_drvdata(psy);

 switch (psp) {
 case 129:
  return ltc294x_set_charge_thr(info,
   LTC294X_REG_CHARGE_THR_HIGH_MSB, val->intval);
 case 130:
  return ltc294x_set_charge_thr(info,
   LTC294X_REG_CHARGE_THR_LOW_MSB, val->intval);
 case 128:
  return ltc294x_set_charge_now(info, val->intval);
 default:
  return -EPERM;
 }
}
