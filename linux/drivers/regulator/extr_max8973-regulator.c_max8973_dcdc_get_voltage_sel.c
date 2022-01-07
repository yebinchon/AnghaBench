
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8973_chip {int curr_vout_reg; int dev; int regmap; } ;


 unsigned int MAX8973_VOUT_MASK ;
 int dev_err (int ,char*,int ,int) ;
 struct max8973_chip* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max8973_dcdc_get_voltage_sel(struct regulator_dev *rdev)
{
 struct max8973_chip *max = rdev_get_drvdata(rdev);
 unsigned int data;
 int ret;

 ret = regmap_read(max->regmap, max->curr_vout_reg, &data);
 if (ret < 0) {
  dev_err(max->dev, "register %d read failed, err = %d\n",
   max->curr_vout_reg, ret);
  return ret;
 }
 return data & MAX8973_VOUT_MASK;
}
