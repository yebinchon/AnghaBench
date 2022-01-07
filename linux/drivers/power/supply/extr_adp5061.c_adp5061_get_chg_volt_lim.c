
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct adp5061_state {int regmap; } ;


 int ADP5061_TERM_SET ;
 int ADP5061_TERM_SET_CHG_VLIM_MODE (unsigned int) ;
 int* adp5061_const_chg_vmax ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int adp5061_get_chg_volt_lim(struct adp5061_state *st,
        union power_supply_propval *val)
{
 unsigned int regval;
 int mode, ret;

 ret = regmap_read(st->regmap, ADP5061_TERM_SET, &regval);
 if (ret < 0)
  return ret;

 mode = ADP5061_TERM_SET_CHG_VLIM_MODE(regval);
 val->intval = adp5061_const_chg_vmax[mode] * 1000;

 return ret;
}
