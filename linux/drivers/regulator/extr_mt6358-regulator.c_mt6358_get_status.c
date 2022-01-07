
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regulator_dev {int dev; int regmap; } ;
struct mt6358_regulator_info {int qi; int status_reg; } ;


 int REGULATOR_STATUS_OFF ;
 int REGULATOR_STATUS_ON ;
 int dev_info (int *,char*,int) ;
 struct mt6358_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int mt6358_get_status(struct regulator_dev *rdev)
{
 int ret;
 u32 regval;
 struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);

 ret = regmap_read(rdev->regmap, info->status_reg, &regval);
 if (ret != 0) {
  dev_info(&rdev->dev, "Failed to get enable reg: %d\n", ret);
  return ret;
 }

 return (regval & info->qi) ? REGULATOR_STATUS_ON : REGULATOR_STATUS_OFF;
}
