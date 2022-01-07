
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct regulator_dev {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct ab8500_regulator_info {TYPE_2__* shared_mode; scalar_t__ update_val; scalar_t__ mode_mask; TYPE_1__ desc; int dev; scalar_t__ update_val_idle; scalar_t__ mode_val_idle; scalar_t__ update_val_normal; scalar_t__ mode_val_normal; scalar_t__ update_mask; scalar_t__ update_reg; scalar_t__ update_bank; scalar_t__ mode_reg; scalar_t__ mode_bank; } ;
struct TYPE_4__ {int lp_mode_req; struct ab8500_regulator_info* shared_regulator; } ;


 int EINVAL ;


 scalar_t__ ab8500_regulator_is_enabled (struct regulator_dev*) ;
 int abx500_mask_and_set_register_interruptible (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int dev_err (int ,char*) ;
 int dev_vdbg (int ,char*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdev_get_dev (struct regulator_dev*) ;
 struct ab8500_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int shared_mode_mutex ;

__attribute__((used)) static int ab8500_regulator_set_mode(struct regulator_dev *rdev,
         unsigned int mode)
{
 int ret = 0;
 u8 bank, reg, mask, val;
 bool lp_mode_req = 0;
 struct ab8500_regulator_info *info = rdev_get_drvdata(rdev);

 if (info == ((void*)0)) {
  dev_err(rdev_get_dev(rdev), "regulator info null pointer\n");
  return -EINVAL;
 }

 if (info->mode_mask) {
  bank = info->mode_bank;
  reg = info->mode_reg;
  mask = info->mode_mask;
 } else {
  bank = info->update_bank;
  reg = info->update_reg;
  mask = info->update_mask;
 }

 if (info->shared_mode)
  mutex_lock(&shared_mode_mutex);

 switch (mode) {
 case 128:
  if (info->shared_mode)
   lp_mode_req = 0;

  if (info->mode_mask)
   val = info->mode_val_normal;
  else
   val = info->update_val_normal;
  break;
 case 129:
  if (info->shared_mode) {
   struct ab8500_regulator_info *shared_regulator;

   shared_regulator = info->shared_mode->shared_regulator;
   if (!shared_regulator->shared_mode->lp_mode_req) {

    info->shared_mode->lp_mode_req = 1;
    goto out_unlock;
   }

   lp_mode_req = 1;
  }

  if (info->mode_mask)
   val = info->mode_val_idle;
  else
   val = info->update_val_idle;
  break;
 default:
  ret = -EINVAL;
  goto out_unlock;
 }

 if (info->mode_mask || ab8500_regulator_is_enabled(rdev)) {
  ret = abx500_mask_and_set_register_interruptible(info->dev,
   bank, reg, mask, val);
  if (ret < 0) {
   dev_err(rdev_get_dev(rdev),
    "couldn't set regulator mode\n");
   goto out_unlock;
  }

  dev_vdbg(rdev_get_dev(rdev),
   "%s-set_mode (bank, reg, mask, value): "
   "0x%x, 0x%x, 0x%x, 0x%x\n",
   info->desc.name, bank, reg,
   mask, val);
 }

 if (!info->mode_mask)
  info->update_val = val;

 if (info->shared_mode)
  info->shared_mode->lp_mode_req = lp_mode_req;

out_unlock:
 if (info->shared_mode)
  mutex_unlock(&shared_mode_mutex);

 return ret;
}
