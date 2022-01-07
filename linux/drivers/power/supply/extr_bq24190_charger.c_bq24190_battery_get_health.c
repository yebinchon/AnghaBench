
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct bq24190_dev_info {int f_reg; int f_reg_lock; } ;


 int BQ24190_REG_F_BAT_FAULT_MASK ;
 int BQ24190_REG_F_NTC_FAULT_MASK ;
 int BQ24190_REG_F_NTC_FAULT_SHIFT ;
 int POWER_SUPPLY_HEALTH_COLD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int POWER_SUPPLY_HEALTH_OVERVOLTAGE ;
 int POWER_SUPPLY_HEALTH_UNKNOWN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bq24190_battery_get_health(struct bq24190_dev_info *bdi,
  union power_supply_propval *val)
{
 u8 v;
 int health;

 mutex_lock(&bdi->f_reg_lock);
 v = bdi->f_reg;
 mutex_unlock(&bdi->f_reg_lock);

 if (v & BQ24190_REG_F_BAT_FAULT_MASK) {
  health = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
 } else {
  v &= BQ24190_REG_F_NTC_FAULT_MASK;
  v >>= BQ24190_REG_F_NTC_FAULT_SHIFT;

  switch (v) {
  case 0x0:
   health = POWER_SUPPLY_HEALTH_GOOD;
   break;
  case 0x1:
  case 0x3:
  case 0x5:
   health = POWER_SUPPLY_HEALTH_COLD;
   break;
  case 0x2:
  case 0x4:
  case 0x6:
   health = POWER_SUPPLY_HEALTH_OVERHEAT;
   break;
  default:
   health = POWER_SUPPLY_HEALTH_UNKNOWN;
  }
 }

 val->intval = health;
 return 0;
}
