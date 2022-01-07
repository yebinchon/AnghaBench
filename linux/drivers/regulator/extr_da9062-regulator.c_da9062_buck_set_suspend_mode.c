
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct da9062_regulator {int mode; } ;


 int BUCK_MODE_AUTO ;
 int BUCK_MODE_SLEEP ;
 int BUCK_MODE_SYNC ;
 int EINVAL ;



 struct da9062_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int da9062_buck_set_suspend_mode(struct regulator_dev *rdev,
     unsigned mode)
{
 struct da9062_regulator *regl = rdev_get_drvdata(rdev);
 int val;

 switch (mode) {
 case 130:
  val = BUCK_MODE_SYNC;
  break;
 case 129:
  val = BUCK_MODE_AUTO;
  break;
 case 128:
  val = BUCK_MODE_SLEEP;
  break;
 default:
  return -EINVAL;
 }

 return regmap_field_write(regl->mode, val);
}
