
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd70528_psy {int dev; int regmap; } ;


 unsigned int BD70528_MASK_CHG_BAT_DETECT ;
 unsigned int BD70528_MASK_CHG_BAT_OVERVOLT ;
 unsigned int BD70528_MASK_CHG_BAT_TIMER ;
 int BD70528_REG_CHG_BAT_STAT ;
 int POWER_SUPPLY_HEALTH_DEAD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERVOLTAGE ;
 int POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int bd70528_get_battery_health(struct bd70528_psy *bdpsy, int *val)
{
 int ret;
 unsigned int v;

 ret = regmap_read(bdpsy->regmap, BD70528_REG_CHG_BAT_STAT, &v);
 if (ret) {
  dev_err(bdpsy->dev, "Battery state read failure %d\n",
   ret);
  return ret;
 }

 if (!(v & BD70528_MASK_CHG_BAT_DETECT))
  *val = POWER_SUPPLY_HEALTH_DEAD;
 else if (v & BD70528_MASK_CHG_BAT_OVERVOLT)
  *val = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
 else if (v & BD70528_MASK_CHG_BAT_TIMER)
  *val = POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE;
 else
  *val = POWER_SUPPLY_HEALTH_GOOD;

 return 0;
}
