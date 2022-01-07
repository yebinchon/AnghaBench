
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77693_charger {TYPE_1__* max77693; } ;
struct TYPE_2__ {int regmap; } ;


 int CHG_CNFG_03_TOTIME_MASK ;
 unsigned int CHG_CNFG_03_TOTIME_SHIFT ;
 int EINVAL ;
 int MAX77693_CHG_REG_CHG_CNFG_03 ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77693_set_top_off_timer(struct max77693_charger *chg,
  unsigned long minutes)
{
 unsigned int data;

 if (minutes > 70)
  return -EINVAL;

 data = minutes / 10;
 data <<= CHG_CNFG_03_TOTIME_SHIFT;

 return regmap_update_bits(chg->max77693->regmap,
   MAX77693_CHG_REG_CHG_CNFG_03,
   CHG_CNFG_03_TOTIME_MASK, data);
}
