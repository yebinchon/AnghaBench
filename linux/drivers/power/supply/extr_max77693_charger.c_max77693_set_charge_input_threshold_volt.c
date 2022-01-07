
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77693_charger {TYPE_1__* max77693; int dev; } ;
struct TYPE_2__ {int regmap; } ;


 int CHG_CNFG_12_VCHGINREG_MASK ;
 unsigned int CHG_CNFG_12_VCHGINREG_SHIFT ;
 int EINVAL ;
 int MAX77693_CHG_REG_CHG_CNFG_12 ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77693_set_charge_input_threshold_volt(struct max77693_charger *chg,
  unsigned int uvolt)
{
 unsigned int data;

 switch (uvolt) {
 case 4300000:
  data = 0x0;
  break;
 case 4700000:
 case 4800000:
 case 4900000:
  data = (uvolt - 4700000) / 100000;
  break;
 default:
  dev_err(chg->dev, "Wrong value for charge input voltage regulation threshold\n");
  return -EINVAL;
 }

 data <<= CHG_CNFG_12_VCHGINREG_SHIFT;

 dev_dbg(chg->dev, "Charge input voltage regulation threshold: %u (0x%x)\n",
   uvolt, data);

 return regmap_update_bits(chg->max77693->regmap,
   MAX77693_CHG_REG_CHG_CNFG_12,
   CHG_CNFG_12_VCHGINREG_MASK, data);
}
