
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regulator_dev {int dummy; } ;
struct as3722_regulators {int dev; struct as3722* as3722; } ;
struct as3722 {int dummy; } ;
struct TYPE_2__ {int mode_mask; int control_reg; } ;


 unsigned int ENOTSUPP ;
 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_NORMAL ;
 int as3722_read (struct as3722*,int ,int*) ;
 TYPE_1__* as3722_reg_lookup ;
 int dev_err (int ,char*,int ,int) ;
 struct as3722_regulators* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static unsigned int as3722_sd_get_mode(struct regulator_dev *rdev)
{
 struct as3722_regulators *as3722_regs = rdev_get_drvdata(rdev);
 struct as3722 *as3722 = as3722_regs->as3722;
 int id = rdev_get_id(rdev);
 u32 val;
 int ret;

 if (!as3722_reg_lookup[id].control_reg)
  return -ENOTSUPP;

 ret = as3722_read(as3722, as3722_reg_lookup[id].control_reg, &val);
 if (ret < 0) {
  dev_err(as3722_regs->dev, "Reg 0x%02x read failed: %d\n",
   as3722_reg_lookup[id].control_reg, ret);
  return ret;
 }

 if (val & as3722_reg_lookup[id].mode_mask)
  return REGULATOR_MODE_FAST;
 else
  return REGULATOR_MODE_NORMAL;
}
