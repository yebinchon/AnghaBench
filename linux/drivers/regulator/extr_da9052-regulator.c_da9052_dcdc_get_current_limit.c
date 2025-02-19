
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct da9052_regulator {TYPE_1__* da9052; } ;
struct TYPE_2__ {scalar_t__ chip_id; } ;


 scalar_t__ DA9052 ;
 scalar_t__ DA9052_BUCKA_REG ;
 int DA9052_BUCK_ILIM_MASK_EVEN ;
 int DA9052_BUCK_ILIM_MASK_ODD ;
 int** da9052_current_limits ;
 int da9052_reg_read (TYPE_1__*,scalar_t__) ;
 struct da9052_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int da9052_dcdc_get_current_limit(struct regulator_dev *rdev)
{
 struct da9052_regulator *regulator = rdev_get_drvdata(rdev);
 int offset = rdev_get_id(rdev);
 int ret, row = 2;

 ret = da9052_reg_read(regulator->da9052, DA9052_BUCKA_REG + offset/2);
 if (ret < 0)
  return ret;




 if (offset % 2 == 0)
  ret = (ret & DA9052_BUCK_ILIM_MASK_EVEN) >> 2;
 else
  ret = (ret & DA9052_BUCK_ILIM_MASK_ODD) >> 6;


 if (regulator->da9052->chip_id == DA9052)
  row = 0;
 else if (offset == 0)
  row = 1;

 return da9052_current_limits[row][ret];
}
