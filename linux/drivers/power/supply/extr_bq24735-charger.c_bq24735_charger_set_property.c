
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct bq24735 {int charging; int lock; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int EPERM ;




 int bq24735_disable_charging (struct bq24735*) ;
 int bq24735_enable_charging (struct bq24735*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_changed (struct power_supply*) ;
 struct bq24735* to_bq24735 (struct power_supply*) ;

__attribute__((used)) static int bq24735_charger_set_property(struct power_supply *psy,
     enum power_supply_property psp,
     const union power_supply_propval *val)
{
 struct bq24735 *charger = to_bq24735(psy);
 int ret;

 switch (psp) {
 case 131:
  switch (val->intval) {
  case 130:
   mutex_lock(&charger->lock);
   charger->charging = 1;
   ret = bq24735_enable_charging(charger);
   mutex_unlock(&charger->lock);
   if (ret)
    return ret;
   break;
  case 129:
  case 128:
   mutex_lock(&charger->lock);
   charger->charging = 0;
   ret = bq24735_disable_charging(charger);
   mutex_unlock(&charger->lock);
   if (ret)
    return ret;
   break;
  default:
   return -EINVAL;
  }
  power_supply_changed(psy);
  break;
 default:
  return -EPERM;
 }

 return 0;
}
