
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_battery_info {scalar_t__* ocv_table; } ;
struct power_supply {int dev; } ;


 int POWER_SUPPLY_OCV_TEMP_MAX ;
 int devm_kfree (int *,scalar_t__) ;

void power_supply_put_battery_info(struct power_supply *psy,
       struct power_supply_battery_info *info)
{
 int i;

 for (i = 0; i < POWER_SUPPLY_OCV_TEMP_MAX; i++) {
  if (info->ocv_table[i])
   devm_kfree(&psy->dev, info->ocv_table[i]);
 }
}
