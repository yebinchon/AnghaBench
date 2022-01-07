
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dev; } ;


 int device_remove_groups (int *,int ) ;
 int tpacpi_battery_groups ;

__attribute__((used)) static int tpacpi_battery_remove(struct power_supply *battery)
{
 device_remove_groups(&battery->dev, tpacpi_battery_groups);
 return 0;
}
