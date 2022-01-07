
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_regulator_pdata {int active_fps_pu_slot; int active_fps_pd_slot; int suspend_fps_pu_slot; int suspend_fps_pd_slot; } ;
struct max77620_regulator_info {int fps_addr; } ;
struct max77620_regulator {int dev; int rmap; struct max77620_regulator_info** rinfo; struct max77620_regulator_pdata* reg_pdata; } ;


 unsigned int MAX77620_FPS_PD_PERIOD_MASK ;
 int MAX77620_FPS_PD_PERIOD_SHIFT ;
 unsigned int MAX77620_FPS_PU_PERIOD_MASK ;
 int MAX77620_FPS_PU_PERIOD_SHIFT ;
 int dev_err (int ,char*,int ,int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int max77620_regulator_set_fps_slots(struct max77620_regulator *pmic,
         int id, bool is_suspend)
{
 struct max77620_regulator_pdata *rpdata = &pmic->reg_pdata[id];
 struct max77620_regulator_info *rinfo = pmic->rinfo[id];
 unsigned int val = 0;
 unsigned int mask = 0;
 int pu = rpdata->active_fps_pu_slot;
 int pd = rpdata->active_fps_pd_slot;
 int ret = 0;

 if (!rinfo)
  return 0;

 if (is_suspend) {
  pu = rpdata->suspend_fps_pu_slot;
  pd = rpdata->suspend_fps_pd_slot;
 }


 if (pu >= 0) {
  val |= (pu << MAX77620_FPS_PU_PERIOD_SHIFT);
  mask |= MAX77620_FPS_PU_PERIOD_MASK;
 }


 if (pd >= 0) {
  val |= (pd << MAX77620_FPS_PD_PERIOD_SHIFT);
  mask |= MAX77620_FPS_PD_PERIOD_MASK;
 }

 if (mask) {
  ret = regmap_update_bits(pmic->rmap, rinfo->fps_addr,
      mask, val);
  if (ret < 0) {
   dev_err(pmic->dev, "Reg 0x%02x update failed: %d\n",
    rinfo->fps_addr, ret);
   return ret;
  }
 }

 return ret;
}
