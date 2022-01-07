
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct adp5061_state {int regmap; } ;


 int ADP5061_IEND ;
 unsigned int ADP5061_IEND_IEND_MSK ;
 int * adp5061_iend ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int adp5061_get_termination_current(struct adp5061_state *st,
        union power_supply_propval *val)
{
 unsigned int regval;
 int ret;

 ret = regmap_read(st->regmap, ADP5061_IEND, &regval);
 if (ret < 0)
  return ret;

 regval = (regval & ADP5061_IEND_IEND_MSK) >> 5;
 val->intval = adp5061_iend[regval];

 return ret;
}
