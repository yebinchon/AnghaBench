
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct adp5061_state {int regmap; } ;


 int ADP5061_VOLTAGE_TH ;
 unsigned int ADP5061_VOLTAGE_TH_VWEAK_MSK ;
 int* adp5061_vweak_th ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int adp5061_get_vweak_th(struct adp5061_state *st,
    union power_supply_propval *val)
{
 unsigned int regval;
 int ret;

 ret = regmap_read(st->regmap, ADP5061_VOLTAGE_TH, &regval);
 if (ret < 0)
  return ret;

 regval &= ADP5061_VOLTAGE_TH_VWEAK_MSK;
 val->intval = adp5061_vweak_th[regval] * 1000;

 return ret;
}
