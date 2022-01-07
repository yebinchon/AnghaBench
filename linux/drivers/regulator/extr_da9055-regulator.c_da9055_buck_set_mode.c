
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int shift; int mask; int reg; } ;
struct da9055_regulator_info {TYPE_1__ mode; } ;
struct da9055_regulator {int da9055; struct da9055_regulator_info* info; } ;


 int DA9055_BUCK_MODE_AUTO ;
 int DA9055_BUCK_MODE_SLEEP ;
 int DA9055_BUCK_MODE_SYNC ;



 int da9055_reg_update (int ,int ,int ,int) ;
 struct da9055_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int da9055_buck_set_mode(struct regulator_dev *rdev,
     unsigned int mode)
{
 struct da9055_regulator *regulator = rdev_get_drvdata(rdev);
 struct da9055_regulator_info *info = regulator->info;
 int val = 0;

 switch (mode) {
 case 130:
  val = DA9055_BUCK_MODE_SYNC << info->mode.shift;
  break;
 case 129:
  val = DA9055_BUCK_MODE_AUTO << info->mode.shift;
  break;
 case 128:
  val = DA9055_BUCK_MODE_SLEEP << info->mode.shift;
  break;
 }

 return da9055_reg_update(regulator->da9055, info->mode.reg,
     info->mode.mask, val);
}
