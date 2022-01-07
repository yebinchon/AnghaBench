
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max77620_regulator_info {int power_mode_mask; int power_mode_shift; int type; int cfg_addr; int volt_addr; } ;
struct max77620_regulator {int* current_power_mode; int dev; int rmap; struct max77620_regulator_info** rinfo; } ;



 int dev_err (int ,char*,int,int) ;
 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static int max77620_regulator_set_power_mode(struct max77620_regulator *pmic,
          int power_mode, int id)
{
 struct max77620_regulator_info *rinfo = pmic->rinfo[id];
 u8 mask = rinfo->power_mode_mask;
 u8 shift = rinfo->power_mode_shift;
 u8 addr;
 int ret;

 switch (rinfo->type) {
 case 128:
  addr = rinfo->cfg_addr;
  break;
 default:
  addr = rinfo->volt_addr;
  break;
 }

 ret = regmap_update_bits(pmic->rmap, addr, mask, power_mode << shift);
 if (ret < 0) {
  dev_err(pmic->dev, "Regulator %d mode set failed: %d\n",
   id, ret);
  return ret;
 }
 pmic->current_power_mode[id] = power_mode;

 return ret;
}
