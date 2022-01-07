
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ power_supply_is_system_supplied () ;
 int speed_on_ac ;

__attribute__((used)) static int gpd_pocket_fan_min_speed(void)
{
 if (power_supply_is_system_supplied())
  return speed_on_ac;
 else
  return 0;
}
