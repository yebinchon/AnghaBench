
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8973_chip {int dev; int regmap; } ;


 int MAX8973_CONTROL1 ;
 unsigned int MAX8973_FPWM_EN_M ;
 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_NORMAL ;
 int dev_err (int ,char*,int ,int) ;
 struct max8973_chip* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int max8973_dcdc_get_mode(struct regulator_dev *rdev)
{
 struct max8973_chip *max = rdev_get_drvdata(rdev);
 unsigned int data;
 int ret;

 ret = regmap_read(max->regmap, MAX8973_CONTROL1, &data);
 if (ret < 0) {
  dev_err(max->dev, "register %d read failed, err %d\n",
    MAX8973_CONTROL1, ret);
  return ret;
 }
 return (data & MAX8973_FPWM_EN_M) ?
  REGULATOR_MODE_FAST : REGULATOR_MODE_NORMAL;
}
