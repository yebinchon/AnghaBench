
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_2__ {int flags; } ;
struct bq27xxx_device_info {int opts; TYPE_1__ cache; } ;


 int BQ27000_FLAG_EDV1 ;
 int BQ27000_FLAG_EDVF ;
 int BQ27000_FLAG_FC ;
 int BQ27XXX_FLAG_FC ;
 int BQ27XXX_FLAG_SOC1 ;
 int BQ27XXX_FLAG_SOCF ;
 int BQ27XXX_O_ZERO ;
 int POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_FULL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_LOW ;
 int POWER_SUPPLY_CAPACITY_LEVEL_NORMAL ;

__attribute__((used)) static int bq27xxx_battery_capacity_level(struct bq27xxx_device_info *di,
       union power_supply_propval *val)
{
 int level;

 if (di->opts & BQ27XXX_O_ZERO) {
  if (di->cache.flags & BQ27000_FLAG_FC)
   level = POWER_SUPPLY_CAPACITY_LEVEL_FULL;
  else if (di->cache.flags & BQ27000_FLAG_EDV1)
   level = POWER_SUPPLY_CAPACITY_LEVEL_LOW;
  else if (di->cache.flags & BQ27000_FLAG_EDVF)
   level = POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL;
  else
   level = POWER_SUPPLY_CAPACITY_LEVEL_NORMAL;
 } else {
  if (di->cache.flags & BQ27XXX_FLAG_FC)
   level = POWER_SUPPLY_CAPACITY_LEVEL_FULL;
  else if (di->cache.flags & BQ27XXX_FLAG_SOC1)
   level = POWER_SUPPLY_CAPACITY_LEVEL_LOW;
  else if (di->cache.flags & BQ27XXX_FLAG_SOCF)
   level = POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL;
  else
   level = POWER_SUPPLY_CAPACITY_LEVEL_NORMAL;
 }

 val->intval = level;

 return 0;
}
