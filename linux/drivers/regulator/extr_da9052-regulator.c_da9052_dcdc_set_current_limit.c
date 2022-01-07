
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
 int DA9052_CURRENT_RANGE ;
 int EINVAL ;
 int** da9052_current_limits ;
 int da9052_reg_update (TYPE_1__*,scalar_t__,int ,int) ;
 struct da9052_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int da9052_dcdc_set_current_limit(struct regulator_dev *rdev, int min_uA,
       int max_uA)
{
 struct da9052_regulator *regulator = rdev_get_drvdata(rdev);
 int offset = rdev_get_id(rdev);
 int reg_val = 0;
 int i, row = 2;


 if (regulator->da9052->chip_id == DA9052)
  row = 0;
 else if (offset == 0)
  row = 1;

 for (i = DA9052_CURRENT_RANGE - 1; i >= 0; i--) {
  if ((min_uA <= da9052_current_limits[row][i]) &&
      (da9052_current_limits[row][i] <= max_uA)) {
   reg_val = i;
   break;
  }
 }

 if (i < 0)
  return -EINVAL;




 if (offset % 2 == 0)
  return da9052_reg_update(regulator->da9052,
      DA9052_BUCKA_REG + offset/2,
      DA9052_BUCK_ILIM_MASK_EVEN,
      reg_val << 2);
 else
  return da9052_reg_update(regulator->da9052,
      DA9052_BUCKA_REG + offset/2,
      DA9052_BUCK_ILIM_MASK_ODD,
      reg_val << 6);
}
