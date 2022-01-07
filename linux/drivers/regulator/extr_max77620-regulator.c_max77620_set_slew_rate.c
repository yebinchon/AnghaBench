
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max77620_regulator_info {scalar_t__ type; int cfg_addr; } ;
struct max77620_regulator {int dev; int rmap; struct max77620_regulator_info** rinfo; } ;


 int MAX77620_LDO_SLEW_RATE_MASK ;
 scalar_t__ MAX77620_REGULATOR_TYPE_SD ;
 int MAX77620_SD_SR_MASK ;
 unsigned int MAX77620_SD_SR_SHIFT ;
 int dev_err (int ,char*,int,int) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77620_set_slew_rate(struct max77620_regulator *pmic, int id,
      int slew_rate)
{
 struct max77620_regulator_info *rinfo = pmic->rinfo[id];
 unsigned int val;
 int ret;
 u8 mask;

 if (rinfo->type == MAX77620_REGULATOR_TYPE_SD) {
  if (slew_rate <= 13750)
   val = 0;
  else if (slew_rate <= 27500)
   val = 1;
  else if (slew_rate <= 55000)
   val = 2;
  else
   val = 3;
  val <<= MAX77620_SD_SR_SHIFT;
  mask = MAX77620_SD_SR_MASK;
 } else {
  if (slew_rate <= 5000)
   val = 1;
  else
   val = 0;
  mask = MAX77620_LDO_SLEW_RATE_MASK;
 }

 ret = regmap_update_bits(pmic->rmap, rinfo->cfg_addr, mask, val);
 if (ret < 0) {
  dev_err(pmic->dev, "Regulator %d slew rate set failed: %d\n",
   id, ret);
  return ret;
 }

 return 0;
}
