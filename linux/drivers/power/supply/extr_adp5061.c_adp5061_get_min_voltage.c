
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct adp5061_state {int regmap; } ;


 int ADP5061_VOLTAGE_TH ;
 unsigned int ADP5061_VOLTAGE_TH_VTRK_DEAD_MSK ;
 int* adp5061_vmin ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int adp5061_get_min_voltage(struct adp5061_state *st,
       union power_supply_propval *val)
{
 unsigned int regval;
 int ret;

 ret = regmap_read(st->regmap, ADP5061_VOLTAGE_TH, &regval);
 if (ret < 0)
  return ret;

 regval = ((regval & ADP5061_VOLTAGE_TH_VTRK_DEAD_MSK) >> 3);
 val->intval = adp5061_vmin[regval] * 1000;

 return ret;
}
