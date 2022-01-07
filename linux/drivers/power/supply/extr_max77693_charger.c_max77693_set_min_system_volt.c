
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77693_charger {TYPE_1__* max77693; int dev; } ;
struct TYPE_2__ {int regmap; } ;


 int CHG_CNFG_04_MINVSYS_MASK ;
 unsigned int CHG_CNFG_04_MINVSYS_SHIFT ;
 int EINVAL ;
 int MAX77693_CHG_REG_CHG_CNFG_04 ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77693_set_min_system_volt(struct max77693_charger *chg,
  unsigned int uvolt)
{
 unsigned int data;

 if (uvolt < 3000000 || uvolt > 3700000) {
  dev_err(chg->dev, "Wrong value for minimum system regulation voltage\n");
  return -EINVAL;
 }

 data = (uvolt - 3000000) / 100000;

 data <<= CHG_CNFG_04_MINVSYS_SHIFT;

 dev_dbg(chg->dev, "Minimum system regulation voltage: %u (0x%x)\n",
   uvolt, data);

 return regmap_update_bits(chg->max77693->regmap,
   MAX77693_CHG_REG_CHG_CNFG_04,
   CHG_CNFG_04_MINVSYS_MASK, data);
}
