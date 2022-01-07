
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct as3722_regulators {int dev; int as3722; } ;
struct TYPE_2__ {int sleep_ctrl_reg; int sleep_ctrl_mask; } ;


 int AS3722_EXT_CONTROL_ENABLE1 ;
 int AS3722_EXT_CONTROL_ENABLE3 ;
 int EINVAL ;
 TYPE_1__* as3722_reg_lookup ;
 int as3722_update_bits (int ,int ,int ,unsigned int) ;
 int dev_err (int ,char*,int ,int) ;
 int ffs (int ) ;

__attribute__((used)) static int as3722_extreg_init(struct as3722_regulators *as3722_regs, int id,
  int ext_pwr_ctrl)
{
 int ret;
 unsigned int val;

 if ((ext_pwr_ctrl < AS3722_EXT_CONTROL_ENABLE1) ||
  (ext_pwr_ctrl > AS3722_EXT_CONTROL_ENABLE3))
  return -EINVAL;

 val = ext_pwr_ctrl << (ffs(as3722_reg_lookup[id].sleep_ctrl_mask) - 1);
 ret = as3722_update_bits(as3722_regs->as3722,
   as3722_reg_lookup[id].sleep_ctrl_reg,
   as3722_reg_lookup[id].sleep_ctrl_mask, val);
 if (ret < 0)
  dev_err(as3722_regs->dev, "Reg 0x%02x update failed: %d\n",
   as3722_reg_lookup[id].sleep_ctrl_reg, ret);
 return ret;
}
