
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct max77620_regulator_pdata {int power_ok; } ;
struct max77620_regulator_info {int cfg_addr; int type; } ;
struct max77620_regulator {TYPE_1__* dev; int rmap; struct max77620_regulator_info** rinfo; struct max77620_regulator_pdata* reg_pdata; } ;
struct max77620_chip {int chip_id; } ;
struct TYPE_2__ {int parent; } ;



 int MAX20024_LDO_CFG2_MPOK_MASK ;
 int MAX20024_SD_CFG1_MPOK_MASK ;
 int MAX77620_REGULATOR_TYPE_SD ;
 int dev_err (TYPE_1__*,char*,int ,int) ;
 struct max77620_chip* dev_get_drvdata (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int max77620_config_power_ok(struct max77620_regulator *pmic, int id)
{
 struct max77620_regulator_pdata *rpdata = &pmic->reg_pdata[id];
 struct max77620_regulator_info *rinfo = pmic->rinfo[id];
 struct max77620_chip *chip = dev_get_drvdata(pmic->dev->parent);
 u8 val, mask;
 int ret;

 switch (chip->chip_id) {
 case 128:
  if (rpdata->power_ok >= 0) {
   if (rinfo->type == MAX77620_REGULATOR_TYPE_SD)
    mask = MAX20024_SD_CFG1_MPOK_MASK;
   else
    mask = MAX20024_LDO_CFG2_MPOK_MASK;

   val = rpdata->power_ok ? mask : 0;

   ret = regmap_update_bits(pmic->rmap, rinfo->cfg_addr,
       mask, val);
   if (ret < 0) {
    dev_err(pmic->dev, "Reg 0x%02x update failed %d\n",
     rinfo->cfg_addr, ret);
    return ret;
   }
  }
  break;

 default:
  break;
 }

 return 0;
}
