
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int strval; int intval; } ;
struct power_supply {int dummy; } ;
struct bq2415x_device {int model; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int BQ2415X_CHARGE_STATUS ;
 int EINVAL ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int bq2415x_exec_command (struct bq2415x_device*,int ) ;
 struct bq2415x_device* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int bq2415x_power_supply_get_property(struct power_supply *psy,
          enum power_supply_property psp,
          union power_supply_propval *val)
{
 struct bq2415x_device *bq = power_supply_get_drvdata(psy);
 int ret;

 switch (psp) {
 case 128:
  ret = bq2415x_exec_command(bq, BQ2415X_CHARGE_STATUS);
  if (ret < 0)
   return ret;
  else if (ret == 0)
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  else if (ret == 1)
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else if (ret == 2)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else
   val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
  break;
 case 129:
  val->strval = bq->model;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
