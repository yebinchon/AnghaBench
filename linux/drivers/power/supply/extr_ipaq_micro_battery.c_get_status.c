
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct micro_battery {int flag; } ;


 int MICRO_BATT_STATUS_CHARGEMAIN ;
 int MICRO_BATT_STATUS_CHARGING ;
 int MICRO_BATT_STATUS_FULL ;
 int MICRO_BATT_STATUS_UNKNOWN ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 struct micro_battery* dev_get_drvdata (int ) ;

__attribute__((used)) static int get_status(struct power_supply *b)
{
 struct micro_battery *mb = dev_get_drvdata(b->dev.parent);

 if (mb->flag == MICRO_BATT_STATUS_UNKNOWN)
  return POWER_SUPPLY_STATUS_UNKNOWN;

 if (mb->flag & MICRO_BATT_STATUS_FULL)
  return POWER_SUPPLY_STATUS_FULL;

 if ((mb->flag & MICRO_BATT_STATUS_CHARGING) ||
  (mb->flag & MICRO_BATT_STATUS_CHARGEMAIN))
  return POWER_SUPPLY_STATUS_CHARGING;

 return POWER_SUPPLY_STATUS_DISCHARGING;
}
