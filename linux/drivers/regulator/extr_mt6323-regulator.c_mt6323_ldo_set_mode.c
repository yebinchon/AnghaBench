
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int regmap; int dev; } ;
struct TYPE_2__ {int name; } ;
struct mt6323_regulator_info {int modeset_mask; int modeset_reg; TYPE_1__ desc; } ;


 int EINVAL ;
 int MT6323_LDO_MODE_LP ;
 int MT6323_LDO_MODE_NORMAL ;


 int dev_err (int *,char*,int ) ;
 int ffs (int ) ;
 struct mt6323_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int mt6323_ldo_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 int ret, val = 0;
 struct mt6323_regulator_info *info = rdev_get_drvdata(rdev);

 if (!info->modeset_mask) {
  dev_err(&rdev->dev, "regulator %s doesn't support set_mode\n",
   info->desc.name);
  return -EINVAL;
 }

 switch (mode) {
 case 128:
  val = MT6323_LDO_MODE_LP;
  break;
 case 129:
  val = MT6323_LDO_MODE_NORMAL;
  break;
 default:
  return -EINVAL;
 }

 val <<= ffs(info->modeset_mask) - 1;

 ret = regmap_update_bits(rdev->regmap, info->modeset_reg,
      info->modeset_mask, val);

 return ret;
}
