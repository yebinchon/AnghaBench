
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int ACT8945A_APCH_STATE ;
 int ACT8945A_APCH_STATUS ;
 unsigned int APCH_STATE_CSTATE ;




 unsigned int APCH_STATE_CSTATE_SHIFT ;
 unsigned int APCH_STATUS_INDAT ;
 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_NONE ;
 int POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;
 int POWER_SUPPLY_CHARGE_TYPE_UNKNOWN ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int act8945a_get_charge_type(struct regmap *regmap, int *val)
{
 int ret;
 unsigned int status, state;

 ret = regmap_read(regmap, ACT8945A_APCH_STATUS, &status);
 if (ret < 0)
  return ret;

 ret = regmap_read(regmap, ACT8945A_APCH_STATE, &state);
 if (ret < 0)
  return ret;

 state &= APCH_STATE_CSTATE;
 state >>= APCH_STATE_CSTATE_SHIFT;

 switch (state) {
 case 128:
  *val = POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
  break;
 case 129:
  *val = POWER_SUPPLY_CHARGE_TYPE_FAST;
  break;
 case 130:
  *val = POWER_SUPPLY_CHARGE_TYPE_NONE;
  break;
 case 131:
 default:
  if (!(status & APCH_STATUS_INDAT))
   *val = POWER_SUPPLY_CHARGE_TYPE_NONE;
  else
   *val = POWER_SUPPLY_CHARGE_TYPE_UNKNOWN;
  break;
 }

 return 0;
}
