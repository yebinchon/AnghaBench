
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct bq24190_dev_info {int dev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int ENODATA ;






 int POWER_SUPPLY_SCOPE_SYSTEM ;
 int POWER_SUPPLY_TECHNOLOGY_UNKNOWN ;
 int bq24190_battery_get_health (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_battery_get_online (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_battery_get_status (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_battery_get_temp_alert_max (struct bq24190_dev_info*,union power_supply_propval*) ;
 int dev_dbg (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct bq24190_dev_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int bq24190_battery_get_property(struct power_supply *psy,
  enum power_supply_property psp, union power_supply_propval *val)
{
 struct bq24190_dev_info *bdi = power_supply_get_drvdata(psy);
 int ret;

 dev_warn(bdi->dev, "warning: /sys/class/power_supply/bq24190-battery is deprecated\n");
 dev_dbg(bdi->dev, "prop: %d\n", psp);

 ret = pm_runtime_get_sync(bdi->dev);
 if (ret < 0)
  return ret;

 switch (psp) {
 case 130:
  ret = bq24190_battery_get_status(bdi, val);
  break;
 case 133:
  ret = bq24190_battery_get_health(bdi, val);
  break;
 case 132:
  ret = bq24190_battery_get_online(bdi, val);
  break;
 case 129:

  val->intval = POWER_SUPPLY_TECHNOLOGY_UNKNOWN;
  ret = 0;
  break;
 case 128:
  ret = bq24190_battery_get_temp_alert_max(bdi, val);
  break;
 case 131:
  val->intval = POWER_SUPPLY_SCOPE_SYSTEM;
  ret = 0;
  break;
 default:
  ret = -ENODATA;
 }

 pm_runtime_mark_last_busy(bdi->dev);
 pm_runtime_put_autosuspend(bdi->dev);

 return ret;
}
