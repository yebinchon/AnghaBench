
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct ucs1002_info {int regmap; } ;


 unsigned int F_CHG_ACT ;
 int UCS1002_REG_OTHER_STATUS ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int ucs1002_get_online(struct ucs1002_info *info,
         union power_supply_propval *val)
{
 unsigned int reg;
 int ret;

 ret = regmap_read(info->regmap, UCS1002_REG_OTHER_STATUS, &reg);
 if (ret)
  return ret;

 val->intval = !!(reg & F_CHG_ACT);

 return 0;
}
