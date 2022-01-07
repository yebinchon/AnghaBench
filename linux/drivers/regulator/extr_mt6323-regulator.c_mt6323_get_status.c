
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regulator_dev {int dev; int regmap; } ;
struct TYPE_2__ {int enable_reg; } ;
struct mt6323_regulator_info {int qi; TYPE_1__ desc; } ;


 int REGULATOR_STATUS_OFF ;
 int REGULATOR_STATUS_ON ;
 int dev_err (int *,char*,int) ;
 struct mt6323_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int mt6323_get_status(struct regulator_dev *rdev)
{
 int ret;
 u32 regval;
 struct mt6323_regulator_info *info = rdev_get_drvdata(rdev);

 ret = regmap_read(rdev->regmap, info->desc.enable_reg, &regval);
 if (ret != 0) {
  dev_err(&rdev->dev, "Failed to get enable reg: %d\n", ret);
  return ret;
 }

 return (regval & info->qi) ? REGULATOR_STATUS_ON : REGULATOR_STATUS_OFF;
}
