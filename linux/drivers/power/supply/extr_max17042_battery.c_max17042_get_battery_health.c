
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct max17042_chip {TYPE_1__* pdata; int regmap; } ;
struct TYPE_2__ {int vmin; int vmax; int temp_min; int temp_max; } ;


 int MAX17042_AvgVCELL ;
 int MAX17042_VCELL ;
 int MAX17042_VMAX_TOLERANCE ;
 int POWER_SUPPLY_HEALTH_COLD ;
 int POWER_SUPPLY_HEALTH_DEAD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int POWER_SUPPLY_HEALTH_OVERVOLTAGE ;
 int max17042_get_temperature (struct max17042_chip*,int*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int max17042_get_battery_health(struct max17042_chip *chip, int *health)
{
 int temp, vavg, vbatt, ret;
 u32 val;

 ret = regmap_read(chip->regmap, MAX17042_AvgVCELL, &val);
 if (ret < 0)
  goto health_error;


 vavg = val * 625 / 8;

 vavg /= 1000;

 ret = regmap_read(chip->regmap, MAX17042_VCELL, &val);
 if (ret < 0)
  goto health_error;


 vbatt = val * 625 / 8;

 vbatt /= 1000;

 if (vavg < chip->pdata->vmin) {
  *health = POWER_SUPPLY_HEALTH_DEAD;
  goto out;
 }

 if (vbatt > chip->pdata->vmax + MAX17042_VMAX_TOLERANCE) {
  *health = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
  goto out;
 }

 ret = max17042_get_temperature(chip, &temp);
 if (ret < 0)
  goto health_error;

 if (temp < chip->pdata->temp_min) {
  *health = POWER_SUPPLY_HEALTH_COLD;
  goto out;
 }

 if (temp > chip->pdata->temp_max) {
  *health = POWER_SUPPLY_HEALTH_OVERHEAT;
  goto out;
 }

 *health = POWER_SUPPLY_HEALTH_GOOD;

out:
 return 0;

health_error:
 return ret;
}
