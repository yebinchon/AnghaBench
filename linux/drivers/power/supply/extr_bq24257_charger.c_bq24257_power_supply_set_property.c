
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct power_supply {int dummy; } ;
struct bq24257_device {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;

 int bq24257_set_input_current_limit (struct bq24257_device*,union power_supply_propval const*) ;
 struct bq24257_device* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int bq24257_power_supply_set_property(struct power_supply *psy,
     enum power_supply_property prop,
     const union power_supply_propval *val)
{
 struct bq24257_device *bq = power_supply_get_drvdata(psy);

 switch (prop) {
 case 128:
  return bq24257_set_input_current_limit(bq, val);
 default:
  return -EINVAL;
 }
}
