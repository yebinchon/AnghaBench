
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int regmap; int dev; } ;
struct TYPE_2__ {int name; } ;
struct mt6323_regulator_info {unsigned int modeset_mask; int modeset_reg; TYPE_1__ desc; } ;


 unsigned int EINVAL ;
 unsigned int REGULATOR_MODE_NORMAL ;
 unsigned int REGULATOR_MODE_STANDBY ;
 int dev_err (int *,char*,int ) ;
 int ffs (unsigned int) ;
 struct mt6323_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int mt6323_ldo_get_mode(struct regulator_dev *rdev)
{
 unsigned int val;
 unsigned int mode;
 int ret;
 struct mt6323_regulator_info *info = rdev_get_drvdata(rdev);

 if (!info->modeset_mask) {
  dev_err(&rdev->dev, "regulator %s doesn't support get_mode\n",
   info->desc.name);
  return -EINVAL;
 }

 ret = regmap_read(rdev->regmap, info->modeset_reg, &val);
 if (ret < 0)
  return ret;

 val &= info->modeset_mask;
 val >>= ffs(info->modeset_mask) - 1;

 if (val & 0x1)
  mode = REGULATOR_MODE_STANDBY;
 else
  mode = REGULATOR_MODE_NORMAL;

 return mode;
}
