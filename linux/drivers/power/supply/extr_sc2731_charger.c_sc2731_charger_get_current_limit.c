
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sc2731_charger_info {scalar_t__ base; int regmap; } ;


 int EINVAL ;
 scalar_t__ SC2731_CHG_CFG5 ;
 int SC2731_CURRENT_LIMIT_100 ;
 int SC2731_CURRENT_LIMIT_2000 ;
 int SC2731_CURRENT_LIMIT_500 ;
 int SC2731_CURRENT_LIMIT_900 ;
 int SC2731_CUR_LIMIT_MASK ;
 int SC2731_CUR_LIMIT_SHIFT ;
 int regmap_read (int ,scalar_t__,int*) ;

__attribute__((used)) static int sc2731_charger_get_current_limit(struct sc2731_charger_info *info,
         u32 *cur)
{
 int ret;
 u32 val;

 ret = regmap_read(info->regmap, info->base + SC2731_CHG_CFG5, &val);
 if (ret)
  return ret;

 val = (val & SC2731_CUR_LIMIT_MASK) >> SC2731_CUR_LIMIT_SHIFT;

 switch (val) {
 case 0:
  *cur = SC2731_CURRENT_LIMIT_100;
  break;

 case 1:
  *cur = SC2731_CURRENT_LIMIT_2000;
  break;

 case 2:
  *cur = SC2731_CURRENT_LIMIT_900;
  break;

 case 3:
  *cur = SC2731_CURRENT_LIMIT_500;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
