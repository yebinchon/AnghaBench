
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct max77620_regulator_info {unsigned int power_mode_mask; unsigned int power_mode_shift; int type; unsigned int cfg_addr; unsigned int volt_addr; } ;
struct max77620_regulator {int dev; int rmap; struct max77620_regulator_info** rinfo; } ;



 int dev_err (int ,char*,int,unsigned int,int) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int max77620_regulator_get_power_mode(struct max77620_regulator *pmic,
          int id)
{
 struct max77620_regulator_info *rinfo = pmic->rinfo[id];
 unsigned int val, addr;
 u8 mask = rinfo->power_mode_mask;
 u8 shift = rinfo->power_mode_shift;
 int ret;

 switch (rinfo->type) {
 case 128:
  addr = rinfo->cfg_addr;
  break;
 default:
  addr = rinfo->volt_addr;
  break;
 }

 ret = regmap_read(pmic->rmap, addr, &val);
 if (ret < 0) {
  dev_err(pmic->dev, "Regulator %d: Reg 0x%02x read failed: %d\n",
   id, addr, ret);
  return ret;
 }

 return (val & mask) >> shift;
}
