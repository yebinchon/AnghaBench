
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union power_supply_propval {int intval; int strval; } ;
struct power_supply {int dummy; } ;
struct TYPE_3__ {scalar_t__ flags; int health; int power_avg; int energy; int cycle_count; int charge_full; int time_to_full; int time_to_empty_avg; int time_to_empty; int temperature; int capacity; } ;
struct TYPE_4__ {int work; } ;
struct bq27xxx_device_info {TYPE_1__ cache; int charge_design_full; int lock; TYPE_2__ work; scalar_t__ last_update; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int BQ27XXX_MANUFACTURER ;
 int EINVAL ;
 int ENODEV ;
 int HZ ;
 int POWER_SUPPLY_TECHNOLOGY_LION ;
 int bq27xxx_battery_capacity_level (struct bq27xxx_device_info*,union power_supply_propval*) ;
 int bq27xxx_battery_current (struct bq27xxx_device_info*,union power_supply_propval*) ;
 int bq27xxx_battery_poll (int *) ;
 int bq27xxx_battery_read_nac (struct bq27xxx_device_info*) ;
 int bq27xxx_battery_status (struct bq27xxx_device_info*,union power_supply_propval*) ;
 int bq27xxx_battery_voltage (struct bq27xxx_device_info*,union power_supply_propval*) ;
 int bq27xxx_simple_value (int ,union power_supply_propval*) ;
 int cancel_delayed_work_sync (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bq27xxx_device_info* power_supply_get_drvdata (struct power_supply*) ;
 scalar_t__ time_is_before_jiffies (scalar_t__) ;

__attribute__((used)) static int bq27xxx_battery_get_property(struct power_supply *psy,
     enum power_supply_property psp,
     union power_supply_propval *val)
{
 int ret = 0;
 struct bq27xxx_device_info *di = power_supply_get_drvdata(psy);

 mutex_lock(&di->lock);
 if (time_is_before_jiffies(di->last_update + 5 * HZ)) {
  cancel_delayed_work_sync(&di->work);
  bq27xxx_battery_poll(&di->work.work);
 }
 mutex_unlock(&di->lock);

 if (psp != 136 && di->cache.flags < 0)
  return -ENODEV;

 switch (psp) {
 case 135:
  ret = bq27xxx_battery_status(di, val);
  break;
 case 128:
  ret = bq27xxx_battery_voltage(di, val);
  break;
 case 136:
  val->intval = di->cache.flags < 0 ? 0 : 1;
  break;
 case 143:
  ret = bq27xxx_battery_current(di, val);
  break;
 case 148:
  ret = bq27xxx_simple_value(di->cache.capacity, val);
  break;
 case 147:
  ret = bq27xxx_battery_capacity_level(di, val);
  break;
 case 133:
  ret = bq27xxx_simple_value(di->cache.temperature, val);
  if (ret == 0)
   val->intval -= 2731;
  break;
 case 131:
  ret = bq27xxx_simple_value(di->cache.time_to_empty, val);
  break;
 case 132:
  ret = bq27xxx_simple_value(di->cache.time_to_empty_avg, val);
  break;
 case 130:
  ret = bq27xxx_simple_value(di->cache.time_to_full, val);
  break;
 case 134:
  val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
  break;
 case 144:
  ret = bq27xxx_simple_value(bq27xxx_battery_read_nac(di), val);
  break;
 case 146:
  ret = bq27xxx_simple_value(di->cache.charge_full, val);
  break;
 case 145:
  ret = bq27xxx_simple_value(di->charge_design_full, val);
  break;




 case 141:
 case 129:
  return -EINVAL;
 case 142:
  ret = bq27xxx_simple_value(di->cache.cycle_count, val);
  break;
 case 140:
  ret = bq27xxx_simple_value(di->cache.energy, val);
  break;
 case 137:
  ret = bq27xxx_simple_value(di->cache.power_avg, val);
  break;
 case 139:
  ret = bq27xxx_simple_value(di->cache.health, val);
  break;
 case 138:
  val->strval = BQ27XXX_MANUFACTURER;
  break;
 default:
  return -EINVAL;
 }

 return ret;
}
