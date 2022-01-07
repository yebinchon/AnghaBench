
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct power_supply {int dummy; } ;
struct bq24190_dev_info {int dev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;






 int bq24190_charger_set_charge_type (struct bq24190_dev_info*,union power_supply_propval const*) ;
 int bq24190_charger_set_current (struct bq24190_dev_info*,union power_supply_propval const*) ;
 int bq24190_charger_set_iinlimit (struct bq24190_dev_info*,union power_supply_propval const*) ;
 int bq24190_charger_set_online (struct bq24190_dev_info*,union power_supply_propval const*) ;
 int bq24190_charger_set_temp_alert_max (struct bq24190_dev_info*,union power_supply_propval const*) ;
 int bq24190_charger_set_voltage (struct bq24190_dev_info*,union power_supply_propval const*) ;
 int dev_dbg (int ,char*,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct bq24190_dev_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int bq24190_charger_set_property(struct power_supply *psy,
  enum power_supply_property psp,
  const union power_supply_propval *val)
{
 struct bq24190_dev_info *bdi = power_supply_get_drvdata(psy);
 int ret;

 dev_dbg(bdi->dev, "prop: %d\n", psp);

 ret = pm_runtime_get_sync(bdi->dev);
 if (ret < 0)
  return ret;

 switch (psp) {
 case 129:
  ret = bq24190_charger_set_online(bdi, val);
  break;
 case 128:
  ret = bq24190_charger_set_temp_alert_max(bdi, val);
  break;
 case 133:
  ret = bq24190_charger_set_charge_type(bdi, val);
  break;
 case 132:
  ret = bq24190_charger_set_current(bdi, val);
  break;
 case 131:
  ret = bq24190_charger_set_voltage(bdi, val);
  break;
 case 130:
  ret = bq24190_charger_set_iinlimit(bdi, val);
  break;
 default:
  ret = -EINVAL;
 }

 pm_runtime_mark_last_busy(bdi->dev);
 pm_runtime_put_autosuspend(bdi->dev);

 return ret;
}
