
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct ltc294x_info {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int LTC294X_REG_ACC_CHARGE_MSB ;
 int LTC294X_REG_CHARGE_THR_HIGH_MSB ;
 int LTC294X_REG_CHARGE_THR_LOW_MSB ;







 int ltc294x_get_charge (struct ltc294x_info*,int ,int *) ;
 int ltc294x_get_charge_counter (struct ltc294x_info*,int *) ;
 int ltc294x_get_current (struct ltc294x_info*,int *) ;
 int ltc294x_get_temperature (struct ltc294x_info*,int *) ;
 int ltc294x_get_voltage (struct ltc294x_info*,int *) ;
 struct ltc294x_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int ltc294x_get_property(struct power_supply *psy,
    enum power_supply_property prop,
    union power_supply_propval *val)
{
 struct ltc294x_info *info = power_supply_get_drvdata(psy);

 switch (prop) {
 case 132:
  return ltc294x_get_charge(info, LTC294X_REG_CHARGE_THR_HIGH_MSB,
      &val->intval);
 case 133:
  return ltc294x_get_charge(info, LTC294X_REG_CHARGE_THR_LOW_MSB,
      &val->intval);
 case 131:
  return ltc294x_get_charge(info, LTC294X_REG_ACC_CHARGE_MSB,
      &val->intval);
 case 134:
  return ltc294x_get_charge_counter(info, &val->intval);
 case 128:
  return ltc294x_get_voltage(info, &val->intval);
 case 130:
  return ltc294x_get_current(info, &val->intval);
 case 129:
  return ltc294x_get_temperature(info, &val->intval);
 default:
  return -EINVAL;
 }
}
