
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_fg_info {int max_volt; } ;


 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERVOLTAGE ;
 int POWER_SUPPLY_HEALTH_UNKNOWN ;
 int fuel_gauge_get_vocv (struct axp288_fg_info*,int*) ;

__attribute__((used)) static int fuel_gauge_battery_health(struct axp288_fg_info *info)
{
 int ret, vocv, health = POWER_SUPPLY_HEALTH_UNKNOWN;

 ret = fuel_gauge_get_vocv(info, &vocv);
 if (ret < 0)
  goto health_read_fail;

 if (vocv > info->max_volt)
  health = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
 else
  health = POWER_SUPPLY_HEALTH_GOOD;

health_read_fail:
 return health;
}
