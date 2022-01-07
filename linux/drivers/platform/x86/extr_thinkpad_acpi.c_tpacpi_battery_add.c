
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply {int dev; TYPE_1__* desc; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 scalar_t__ device_add_groups (int *,int ) ;
 int tpacpi_battery_get_id (int ) ;
 int tpacpi_battery_groups ;
 scalar_t__ tpacpi_battery_probe (int) ;

__attribute__((used)) static int tpacpi_battery_add(struct power_supply *battery)
{
 int batteryid = tpacpi_battery_get_id(battery->desc->name);

 if (tpacpi_battery_probe(batteryid))
  return -ENODEV;
 if (device_add_groups(&battery->dev, tpacpi_battery_groups))
  return -ENODEV;
 return 0;
}
