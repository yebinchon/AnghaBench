
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int strval; int intval; } ;
struct power_supply {int dummy; } ;
struct bq24190_dev_info {int dev; int model_name; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int BQ24190_MANUFACTURER ;
 int ENODATA ;
 int POWER_SUPPLY_SCOPE_SYSTEM ;
 int bq24190_charger_get_charge_term (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_charger_get_charge_type (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_charger_get_current (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_charger_get_current_max (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_charger_get_health (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_charger_get_iinlimit (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_charger_get_online (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_charger_get_precharge (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_charger_get_status (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_charger_get_temp_alert_max (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_charger_get_voltage (struct bq24190_dev_info*,union power_supply_propval*) ;
 int bq24190_charger_get_voltage_max (struct bq24190_dev_info*,union power_supply_propval*) ;
 int dev_dbg (int ,char*,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct bq24190_dev_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int bq24190_charger_get_property(struct power_supply *psy,
  enum power_supply_property psp, union power_supply_propval *val)
{
 struct bq24190_dev_info *bdi = power_supply_get_drvdata(psy);
 int ret;

 dev_dbg(bdi->dev, "prop: %d\n", psp);

 ret = pm_runtime_get_sync(bdi->dev);
 if (ret < 0)
  return ret;

 switch (psp) {
 case 141:
  ret = bq24190_charger_get_charge_type(bdi, val);
  break;
 case 136:
  ret = bq24190_charger_get_health(bdi, val);
  break;
 case 132:
  ret = bq24190_charger_get_online(bdi, val);
  break;
 case 129:
  ret = bq24190_charger_get_status(bdi, val);
  break;
 case 128:
  ret = bq24190_charger_get_temp_alert_max(bdi, val);
  break;
 case 131:
  ret = bq24190_charger_get_precharge(bdi, val);
  break;
 case 142:
  ret = bq24190_charger_get_charge_term(bdi, val);
  break;
 case 140:
  ret = bq24190_charger_get_current(bdi, val);
  break;
 case 139:
  ret = bq24190_charger_get_current_max(bdi, val);
  break;
 case 138:
  ret = bq24190_charger_get_voltage(bdi, val);
  break;
 case 137:
  ret = bq24190_charger_get_voltage_max(bdi, val);
  break;
 case 135:
  ret = bq24190_charger_get_iinlimit(bdi, val);
  break;
 case 130:
  val->intval = POWER_SUPPLY_SCOPE_SYSTEM;
  ret = 0;
  break;
 case 133:
  val->strval = bdi->model_name;
  ret = 0;
  break;
 case 134:
  val->strval = BQ24190_MANUFACTURER;
  ret = 0;
  break;
 default:
  ret = -ENODATA;
 }

 pm_runtime_mark_last_busy(bdi->dev);
 pm_runtime_put_autosuspend(bdi->dev);

 return ret;
}
