
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct max8649_regulator_info {int regmap; } ;
struct TYPE_2__ {int vsel_reg; } ;


 int DIV_ROUND_UP (int,int) ;
 int MAX8649_RAMP ;
 unsigned int MAX8649_RAMP_MASK ;
 unsigned int MAX8649_VOL_MASK ;
 struct max8649_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regulator_list_voltage_linear (struct regulator_dev*,unsigned char) ;

__attribute__((used)) static int max8649_enable_time(struct regulator_dev *rdev)
{
 struct max8649_regulator_info *info = rdev_get_drvdata(rdev);
 int voltage, rate, ret;
 unsigned int val;


 ret = regmap_read(info->regmap, rdev->desc->vsel_reg, &val);
 if (ret != 0)
  return ret;
 val &= MAX8649_VOL_MASK;
 voltage = regulator_list_voltage_linear(rdev, (unsigned char)val);


 ret = regmap_read(info->regmap, MAX8649_RAMP, &val);
 if (ret != 0)
  return ret;
 ret = (val & MAX8649_RAMP_MASK) >> 5;
 rate = (32 * 1000) >> ret;

 return DIV_ROUND_UP(voltage, rate);
}
