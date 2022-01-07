
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct ab8500_regulator_info {int update_val; int update_mask; int update_reg; int update_bank; TYPE_1__ desc; int dev; } ;


 int EINVAL ;
 int abx500_mask_and_set_register_interruptible (int ,int ,int ,int ,int ) ;
 int dev_err (int ,char*) ;
 int dev_vdbg (int ,char*,int ,int ,int ,int ,int ) ;
 int rdev_get_dev (struct regulator_dev*) ;
 struct ab8500_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int ab8500_regulator_enable(struct regulator_dev *rdev)
{
 int ret;
 struct ab8500_regulator_info *info = rdev_get_drvdata(rdev);

 if (info == ((void*)0)) {
  dev_err(rdev_get_dev(rdev), "regulator info null pointer\n");
  return -EINVAL;
 }

 ret = abx500_mask_and_set_register_interruptible(info->dev,
  info->update_bank, info->update_reg,
  info->update_mask, info->update_val);
 if (ret < 0) {
  dev_err(rdev_get_dev(rdev),
   "couldn't set enable bits for regulator\n");
  return ret;
 }

 dev_vdbg(rdev_get_dev(rdev),
  "%s-enable (bank, reg, mask, value): 0x%x, 0x%x, 0x%x, 0x%x\n",
  info->desc.name, info->update_bank, info->update_reg,
  info->update_mask, info->update_val);

 return ret;
}
