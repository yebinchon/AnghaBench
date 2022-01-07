
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct da9150_charger {int da9150; } ;





 int DA9150_CHG_STAT_MASK ;

 int DA9150_STATUS_J ;
 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_NONE ;
 int POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;
 int da9150_reg_read (int ,int ) ;

__attribute__((used)) static int da9150_charger_battery_charge_type(struct da9150_charger *charger,
           union power_supply_propval *val)
{
 u8 reg;

 reg = da9150_reg_read(charger->da9150, DA9150_STATUS_J);

 switch (reg & DA9150_CHG_STAT_MASK) {
 case 130:
  val->intval = POWER_SUPPLY_CHARGE_TYPE_FAST;
  break;
 case 131:
 case 128:
 case 129:
  val->intval = POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
  break;
 default:
  val->intval = POWER_SUPPLY_CHARGE_TYPE_NONE;
  break;
 }

 return 0;
}
