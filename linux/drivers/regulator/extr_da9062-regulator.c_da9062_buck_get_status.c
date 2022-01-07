
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int EIO ;
 int REGULATOR_STATUS_OFF ;
 int da9062_buck_get_mode (struct regulator_dev*) ;
 int regulator_is_enabled_regmap (struct regulator_dev*) ;
 int regulator_mode_to_status (int) ;

__attribute__((used)) static int da9062_buck_get_status(struct regulator_dev *rdev)
{
 int ret = regulator_is_enabled_regmap(rdev);

 if (ret == 0) {
  ret = REGULATOR_STATUS_OFF;
 } else if (ret > 0) {
  ret = da9062_buck_get_mode(rdev);
  if (ret > 0)
   ret = regulator_mode_to_status(ret);
  else if (ret == 0)
   ret = -EIO;
 }

 return ret;
}
