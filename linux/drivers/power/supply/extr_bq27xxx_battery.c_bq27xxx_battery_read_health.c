
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct bq27xxx_device_info {TYPE_1__ cache; } ;


 int POWER_SUPPLY_HEALTH_COLD ;
 int POWER_SUPPLY_HEALTH_DEAD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int bq27xxx_battery_dead (struct bq27xxx_device_info*,int ) ;
 int bq27xxx_battery_overtemp (struct bq27xxx_device_info*,int ) ;
 int bq27xxx_battery_undertemp (struct bq27xxx_device_info*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int bq27xxx_battery_read_health(struct bq27xxx_device_info *di)
{

 if (unlikely(bq27xxx_battery_overtemp(di, di->cache.flags)))
  return POWER_SUPPLY_HEALTH_OVERHEAT;
 if (unlikely(bq27xxx_battery_undertemp(di, di->cache.flags)))
  return POWER_SUPPLY_HEALTH_COLD;
 if (unlikely(bq27xxx_battery_dead(di, di->cache.flags)))
  return POWER_SUPPLY_HEALTH_DEAD;

 return POWER_SUPPLY_HEALTH_GOOD;
}
