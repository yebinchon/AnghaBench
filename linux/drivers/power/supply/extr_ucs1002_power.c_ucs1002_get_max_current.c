
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct ucs1002_info {int regmap; } ;


 unsigned int UCS1002_ILIM_SW_MASK ;
 int UCS1002_REG_ILIMIT ;
 int regmap_read (int ,int ,unsigned int*) ;
 int * ucs1002_current_limit_uA ;

__attribute__((used)) static int ucs1002_get_max_current(struct ucs1002_info *info,
       union power_supply_propval *val)
{
 unsigned int reg;
 int ret;

 ret = regmap_read(info->regmap, UCS1002_REG_ILIMIT, &reg);
 if (ret)
  return ret;

 val->intval = ucs1002_current_limit_uA[reg & UCS1002_ILIM_SW_MASK];

 return 0;
}
