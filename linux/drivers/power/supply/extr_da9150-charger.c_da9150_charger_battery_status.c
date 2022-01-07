
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct da9150_charger {int da9150; } ;







 int DA9150_CHG_STAT_MASK ;





 int DA9150_STATUS_H ;
 int DA9150_STATUS_J ;
 int DA9150_VBUS_STAT_MASK ;
 int DA9150_VBUS_STAT_OFF ;
 int DA9150_VBUS_STAT_WAIT ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int da9150_reg_read (int ,int ) ;

__attribute__((used)) static int da9150_charger_battery_status(struct da9150_charger *charger,
      union power_supply_propval *val)
{
 u8 reg;


 reg = da9150_reg_read(charger->da9150, DA9150_STATUS_H);

 if (((reg & DA9150_VBUS_STAT_MASK) == DA9150_VBUS_STAT_OFF) ||
     ((reg & DA9150_VBUS_STAT_MASK) == DA9150_VBUS_STAT_WAIT)) {
  val->intval = POWER_SUPPLY_STATUS_DISCHARGING;

  return 0;
 }

 reg = da9150_reg_read(charger->da9150, DA9150_STATUS_J);


 switch (reg & DA9150_CHG_STAT_MASK) {
 case 137:
 case 131:
 case 135:
 case 134:
  val->intval = POWER_SUPPLY_STATUS_CHARGING;
  break;
 case 132:
 case 130:
 case 129:
 case 128:
 case 136:
  val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;
 case 133:
  val->intval = POWER_SUPPLY_STATUS_FULL;
  break;
 default:
  val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
  break;
 }

 return 0;
}
