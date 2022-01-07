
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct adp5061_state {int regmap; } ;


 int ADP5061_CHG_CURR ;
 unsigned int ADP5061_CHG_CURR_ICHG_MSK ;
 int ARRAY_SIZE (int*) ;
 int* adp5061_const_ichg ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int adp5061_get_const_chg_current(struct adp5061_state *st,
  union power_supply_propval *val)
{
 unsigned int regval;
 int ret;

 ret = regmap_read(st->regmap, ADP5061_CHG_CURR, &regval);
 if (ret < 0)
  return ret;

 regval = ((regval & ADP5061_CHG_CURR_ICHG_MSK) >> 2);
 if (regval >= ARRAY_SIZE(adp5061_const_ichg))
  regval = ARRAY_SIZE(adp5061_const_ichg) - 1;

 val->intval = adp5061_const_ichg[regval] * 1000;

 return ret;
}
