
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct bq24190_dev_info {int dummy; } ;


 int bq24190_battery_set_temp_alert_max (struct bq24190_dev_info*,union power_supply_propval const*) ;

__attribute__((used)) static int bq24190_charger_set_temp_alert_max(struct bq24190_dev_info *bdi,
           const union power_supply_propval *val)
{
 return bq24190_battery_set_temp_alert_max(bdi, val);
}
