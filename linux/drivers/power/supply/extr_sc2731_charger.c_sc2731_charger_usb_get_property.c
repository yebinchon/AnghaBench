
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u32 ;
struct sc2731_charger_info {int lock; int charging; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;



 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sc2731_charger_info* power_supply_get_drvdata (struct power_supply*) ;
 int sc2731_charger_get_current (struct sc2731_charger_info*,int*) ;
 int sc2731_charger_get_current_limit (struct sc2731_charger_info*,int*) ;
 int sc2731_charger_get_status (struct sc2731_charger_info*) ;

__attribute__((used)) static int sc2731_charger_usb_get_property(struct power_supply *psy,
        enum power_supply_property psp,
        union power_supply_propval *val)
{
 struct sc2731_charger_info *info = power_supply_get_drvdata(psy);
 int ret = 0;
 u32 cur;

 mutex_lock(&info->lock);

 switch (psp) {
 case 128:
  if (info->charging)
   val->intval = sc2731_charger_get_status(info);
  else
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;

 case 130:
  if (!info->charging) {
   val->intval = 0;
  } else {
   ret = sc2731_charger_get_current(info, &cur);
   if (ret)
    goto out;

   val->intval = cur * 1000;
  }
  break;

 case 129:
  if (!info->charging) {
   val->intval = 0;
  } else {
   ret = sc2731_charger_get_current_limit(info, &cur);
   if (ret)
    goto out;

   val->intval = cur * 1000;
  }
  break;

 default:
  ret = -EINVAL;
 }

out:
 mutex_unlock(&info->lock);
 return ret;
}
