
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77693_charger {TYPE_1__* max77693; int dev; } ;
struct TYPE_2__ {int regmap; } ;


 int CHG_CNFG_04_CHGCVPRM_MASK ;
 unsigned int CHG_CNFG_04_CHGCVPRM_SHIFT ;
 int EINVAL ;
 int MAX77693_CHG_REG_CHG_CNFG_04 ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77693_set_constant_volt(struct max77693_charger *chg,
  unsigned int uvolt)
{
 unsigned int data;
 if (uvolt >= 3650000 && uvolt < 4340000)
  data = (uvolt - 3650000) / 25000;
 else if (uvolt >= 4340000 && uvolt < 4350000)
  data = 0x1c;
 else if (uvolt >= 4350000 && uvolt <= 4400000)
  data = 0x1d + (uvolt - 4350000) / 25000;
 else {
  dev_err(chg->dev, "Wrong value for charging constant voltage\n");
  return -EINVAL;
 }

 data <<= CHG_CNFG_04_CHGCVPRM_SHIFT;

 dev_dbg(chg->dev, "Charging constant voltage: %u (0x%x)\n", uvolt,
   data);

 return regmap_update_bits(chg->max77693->regmap,
   MAX77693_CHG_REG_CHG_CNFG_04,
   CHG_CNFG_04_CHGCVPRM_MASK, data);
}
