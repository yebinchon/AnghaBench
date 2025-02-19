
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct adp5061_state {int regmap; } ;


 int ADP5061_TERM_SET ;
 unsigned int ADP5061_TERM_SET_VTRM_MSK ;
 int ARRAY_SIZE (int*) ;
 int* adp5061_vmax ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int adp5061_get_max_voltage(struct adp5061_state *st,
       union power_supply_propval *val)
{
 unsigned int regval;
 int ret;

 ret = regmap_read(st->regmap, ADP5061_TERM_SET, &regval);
 if (ret < 0)
  return ret;

 regval = ((regval & ADP5061_TERM_SET_VTRM_MSK) >> 2) - 0x0F;
 if (regval >= ARRAY_SIZE(adp5061_vmax))
  regval = ARRAY_SIZE(adp5061_vmax) - 1;

 val->intval = adp5061_vmax[regval] * 1000;

 return ret;
}
