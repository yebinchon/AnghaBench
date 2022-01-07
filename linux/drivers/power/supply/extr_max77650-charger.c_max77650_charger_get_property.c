
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {void* intval; } ;
struct power_supply {int dummy; } ;
struct max77650_charger_data {int map; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 void* MAX77650_CHARGER_CHG_CHARGING (int) ;
 int MAX77650_CHG_DETAILS_BITS (int) ;
 int MAX77650_REG_STAT_CHG_B ;
 void* POWER_SUPPLY_CHARGE_TYPE_FAST ;
 void* POWER_SUPPLY_CHARGE_TYPE_NONE ;
 void* POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;
 void* POWER_SUPPLY_CHARGE_TYPE_UNKNOWN ;



 void* POWER_SUPPLY_STATUS_CHARGING ;
 void* POWER_SUPPLY_STATUS_FULL ;
 void* POWER_SUPPLY_STATUS_NOT_CHARGING ;
 void* POWER_SUPPLY_STATUS_UNKNOWN ;
 struct max77650_charger_data* power_supply_get_drvdata (struct power_supply*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int max77650_charger_get_property(struct power_supply *psy,
      enum power_supply_property psp,
      union power_supply_propval *val)
{
 struct max77650_charger_data *chg = power_supply_get_drvdata(psy);
 int rv, reg;

 switch (psp) {
 case 128:
  rv = regmap_read(chg->map, MAX77650_REG_STAT_CHG_B, &reg);
  if (rv)
   return rv;

  if (MAX77650_CHARGER_CHG_CHARGING(reg)) {
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
   break;
  }

  switch (MAX77650_CHG_DETAILS_BITS(reg)) {
  case 141:
  case 131:
  case 132:
  case 133:
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
   break;
  case 134:
  case 140:
  case 139:
  case 136:
  case 135:
  case 138:
  case 137:
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
   break;
  case 142:
   val->intval = POWER_SUPPLY_STATUS_FULL;
   break;
  default:
   val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
  }
  break;
 case 129:
  rv = regmap_read(chg->map, MAX77650_REG_STAT_CHG_B, &reg);
  if (rv)
   return rv;

  val->intval = MAX77650_CHARGER_CHG_CHARGING(reg);
  break;
 case 130:
  rv = regmap_read(chg->map, MAX77650_REG_STAT_CHG_B, &reg);
  if (rv)
   return rv;

  if (!MAX77650_CHARGER_CHG_CHARGING(reg)) {
   val->intval = POWER_SUPPLY_CHARGE_TYPE_NONE;
   break;
  }

  switch (MAX77650_CHG_DETAILS_BITS(reg)) {
  case 134:
  case 140:
  case 139:
  case 136:
  case 135:
   val->intval = POWER_SUPPLY_CHARGE_TYPE_FAST;
   break;
  case 138:
  case 137:
   val->intval = POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
   break;
  default:
   val->intval = POWER_SUPPLY_CHARGE_TYPE_UNKNOWN;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
