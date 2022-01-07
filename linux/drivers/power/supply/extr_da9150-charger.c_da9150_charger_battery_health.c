
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct da9150_charger {int da9150; } ;



 int DA9150_CHG_STAT_MASK ;


 int DA9150_CHG_TEMP_MASK ;


 int DA9150_STATUS_J ;
 int POWER_SUPPLY_HEALTH_COLD ;
 int POWER_SUPPLY_HEALTH_DEAD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;
 int da9150_reg_read (int ,int ) ;

__attribute__((used)) static int da9150_charger_battery_health(struct da9150_charger *charger,
      union power_supply_propval *val)
{
 u8 reg;

 reg = da9150_reg_read(charger->da9150, DA9150_STATUS_J);


 switch (reg & DA9150_CHG_TEMP_MASK) {
 case 128:
  val->intval = POWER_SUPPLY_HEALTH_COLD;
  return 0;
 case 129:
  val->intval = POWER_SUPPLY_HEALTH_OVERHEAT;
  return 0;
 default:
  break;
 }


 switch (reg & DA9150_CHG_STAT_MASK) {
 case 132:
 case 131:
  val->intval = POWER_SUPPLY_HEALTH_DEAD;
  break;
 case 130:
  val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  break;
 default:
  val->intval = POWER_SUPPLY_HEALTH_GOOD;
  break;
 }

 return 0;
}
