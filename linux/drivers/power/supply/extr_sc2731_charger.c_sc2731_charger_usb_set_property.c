
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct sc2731_charger_info {int lock; int dev; int charging; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int ENODEV ;


 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sc2731_charger_info* power_supply_get_drvdata (struct power_supply*) ;
 int sc2731_charger_set_current (struct sc2731_charger_info*,int) ;
 int sc2731_charger_set_current_limit (struct sc2731_charger_info*,int) ;

__attribute__((used)) static int
sc2731_charger_usb_set_property(struct power_supply *psy,
    enum power_supply_property psp,
    const union power_supply_propval *val)
{
 struct sc2731_charger_info *info = power_supply_get_drvdata(psy);
 int ret;

 mutex_lock(&info->lock);

 if (!info->charging) {
  mutex_unlock(&info->lock);
  return -ENODEV;
 }

 switch (psp) {
 case 129:
  ret = sc2731_charger_set_current(info, val->intval / 1000);
  if (ret < 0)
   dev_err(info->dev, "set charge current failed\n");
  break;

 case 128:
  ret = sc2731_charger_set_current_limit(info,
             val->intval / 1000);
  if (ret < 0)
   dev_err(info->dev, "set input current limit failed\n");
  break;

 default:
  ret = -EINVAL;
 }

 mutex_unlock(&info->lock);
 return ret;
}
