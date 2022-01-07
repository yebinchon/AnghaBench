
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct da9063_regulator {int suspend_sleep; } ;


 int EINVAL ;


 struct da9063_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_field_write (int ,unsigned int) ;

__attribute__((used)) static int da9063_ldo_set_suspend_mode(struct regulator_dev *rdev, unsigned mode)
{
 struct da9063_regulator *regl = rdev_get_drvdata(rdev);
 unsigned val;

 switch (mode) {
 case 129:
  val = 0;
  break;
 case 128:
  val = 1;
  break;
 default:
  return -EINVAL;
 }

 return regmap_field_write(regl->suspend_sleep, val);
}
