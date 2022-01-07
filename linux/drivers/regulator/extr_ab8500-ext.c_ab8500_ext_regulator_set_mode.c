
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct ab8500_ext_regulator_info {int update_val; int update_mask; int update_reg; int update_bank; TYPE_2__ desc; int dev; TYPE_1__* cfg; int update_val_lp; int update_val_hp; } ;
struct TYPE_3__ {scalar_t__ hwreq; } ;


 int EINVAL ;


 scalar_t__ ab8500_ext_regulator_is_enabled (struct regulator_dev*) ;
 int abx500_mask_and_set_register_interruptible (int ,int ,int ,int ,int ) ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ) ;
 int dev_err (int ,char*) ;
 int rdev_get_dev (struct regulator_dev*) ;
 struct ab8500_ext_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int ab8500_ext_regulator_set_mode(struct regulator_dev *rdev,
      unsigned int mode)
{
 int ret = 0;
 struct ab8500_ext_regulator_info *info = rdev_get_drvdata(rdev);
 u8 regval;

 if (info == ((void*)0)) {
  dev_err(rdev_get_dev(rdev), "regulator info null pointer\n");
  return -EINVAL;
 }

 switch (mode) {
 case 128:
  regval = info->update_val_hp;
  break;
 case 129:
  regval = info->update_val_lp;
  break;

 default:
  return -EINVAL;
 }





 if (ab8500_ext_regulator_is_enabled(rdev) &&
     !(info->cfg && info->cfg->hwreq)) {
  ret = abx500_mask_and_set_register_interruptible(info->dev,
     info->update_bank, info->update_reg,
     info->update_mask, regval);
  if (ret < 0) {
   dev_err(rdev_get_dev(rdev),
    "Could not set regulator mode.\n");
   return ret;
  }

  dev_dbg(rdev_get_dev(rdev),
   "%s-set_mode (bank, reg, mask, value): "
   "0x%x, 0x%x, 0x%x, 0x%x\n",
   info->desc.name, info->update_bank, info->update_reg,
   info->update_mask, regval);
 }

 info->update_val = regval;

 return 0;
}
