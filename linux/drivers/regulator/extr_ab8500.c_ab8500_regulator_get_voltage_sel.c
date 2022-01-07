
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct ab8500_regulator_info {int voltage_mask; int voltage_reg; int voltage_bank; TYPE_1__ desc; int dev; } ;


 int EINVAL ;
 int abx500_get_register_interruptible (int ,int ,int ,int*) ;
 int dev_err (int ,char*) ;
 int dev_vdbg (int ,char*,int ,int ,int ,int,int,int) ;
 int ffs (int) ;
 int rdev_get_dev (struct regulator_dev*) ;
 struct ab8500_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int ab8500_regulator_get_voltage_sel(struct regulator_dev *rdev)
{
 int ret, voltage_shift;
 struct ab8500_regulator_info *info = rdev_get_drvdata(rdev);
 u8 regval;

 if (info == ((void*)0)) {
  dev_err(rdev_get_dev(rdev), "regulator info null pointer\n");
  return -EINVAL;
 }

 voltage_shift = ffs(info->voltage_mask) - 1;

 ret = abx500_get_register_interruptible(info->dev,
   info->voltage_bank, info->voltage_reg, &regval);
 if (ret < 0) {
  dev_err(rdev_get_dev(rdev),
   "couldn't read voltage reg for regulator\n");
  return ret;
 }

 dev_vdbg(rdev_get_dev(rdev),
  "%s-get_voltage (bank, reg, mask, shift, value): "
  "0x%x, 0x%x, 0x%x, 0x%x, 0x%x\n",
  info->desc.name, info->voltage_bank,
  info->voltage_reg, info->voltage_mask,
  voltage_shift, regval);

 return (regval & info->voltage_mask) >> voltage_shift;
}
