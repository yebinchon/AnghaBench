
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct act8945a_charger {int lbo_gpio; } ;


 int ACT8945A_APCH_CFG ;
 int ACT8945A_APCH_STATE ;
 int ACT8945A_APCH_STATUS ;
 unsigned int APCH_CFG_SUSCHG ;
 unsigned int APCH_STATE_CSTATE ;




 unsigned int APCH_STATE_CSTATE_SHIFT ;
 unsigned int APCH_STATUS_CHGDAT ;
 unsigned int APCH_STATUS_INDAT ;
 int POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_FULL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_HIGH ;
 int POWER_SUPPLY_CAPACITY_LEVEL_LOW ;
 int POWER_SUPPLY_CAPACITY_LEVEL_NORMAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN ;
 int gpiod_get_value (int ) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int act8945a_get_capacity_level(struct act8945a_charger *charger,
           struct regmap *regmap, int *val)
{
 int ret;
 unsigned int status, state, config;
 int lbo_level = gpiod_get_value(charger->lbo_gpio);

 ret = regmap_read(regmap, ACT8945A_APCH_STATUS, &status);
 if (ret < 0)
  return ret;

 ret = regmap_read(regmap, ACT8945A_APCH_CFG, &config);
 if (ret < 0)
  return ret;

 ret = regmap_read(regmap, ACT8945A_APCH_STATE, &state);
 if (ret < 0)
  return ret;

 state &= APCH_STATE_CSTATE;
 state >>= APCH_STATE_CSTATE_SHIFT;

 switch (state) {
 case 128:
  *val = POWER_SUPPLY_CAPACITY_LEVEL_LOW;
  break;
 case 129:
  if (lbo_level)
   *val = POWER_SUPPLY_CAPACITY_LEVEL_HIGH;
  else
   *val = POWER_SUPPLY_CAPACITY_LEVEL_LOW;
  break;
 case 130:
  if (status & APCH_STATUS_CHGDAT)
   *val = POWER_SUPPLY_CAPACITY_LEVEL_FULL;
  else
   *val = POWER_SUPPLY_CAPACITY_LEVEL_NORMAL;
  break;
 case 131:
 default:
  if (config & APCH_CFG_SUSCHG) {
   *val = POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN;
  } else {
   *val = POWER_SUPPLY_CAPACITY_LEVEL_NORMAL;
   if (!(status & APCH_STATUS_INDAT)) {
    if (!lbo_level)
     *val = POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL;
   }
  }
  break;
 }

 return 0;
}
