
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77693_charger {TYPE_1__* max77693; int dev; } ;
struct TYPE_2__ {int regmap; } ;


 int CHG_CNFG_07_REGTEMP_MASK ;
 unsigned int CHG_CNFG_07_REGTEMP_SHIFT ;
 int EINVAL ;
 int MAX77693_CHG_REG_CHG_CNFG_07 ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77693_set_thermal_regulation_temp(struct max77693_charger *chg,
  unsigned int cels)
{
 unsigned int data;

 switch (cels) {
 case 70:
 case 85:
 case 100:
 case 115:
  data = (cels - 70) / 15;
  break;
 default:
  dev_err(chg->dev, "Wrong value for thermal regulation loop temperature\n");
  return -EINVAL;
 }

 data <<= CHG_CNFG_07_REGTEMP_SHIFT;

 dev_dbg(chg->dev, "Thermal regulation loop temperature: %u (0x%x)\n",
   cels, data);

 return regmap_update_bits(chg->max77693->regmap,
   MAX77693_CHG_REG_CHG_CNFG_07,
   CHG_CNFG_07_REGTEMP_MASK, data);
}
