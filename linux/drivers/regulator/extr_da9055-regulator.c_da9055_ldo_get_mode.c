
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int sl_shift; int reg_b; } ;
struct da9055_regulator_info {TYPE_1__ volt; } ;
struct da9055_regulator {int da9055; struct da9055_regulator_info* info; } ;


 unsigned int REGULATOR_MODE_NORMAL ;
 unsigned int REGULATOR_MODE_STANDBY ;
 int da9055_reg_read (int ,int ) ;
 struct da9055_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static unsigned int da9055_ldo_get_mode(struct regulator_dev *rdev)
{
 struct da9055_regulator *regulator = rdev_get_drvdata(rdev);
 struct da9055_regulator_info *info = regulator->info;
 int ret;

 ret = da9055_reg_read(regulator->da9055, info->volt.reg_b);
 if (ret < 0)
  return ret;

 if (ret >> info->volt.sl_shift)
  return REGULATOR_MODE_STANDBY;
 else
  return REGULATOR_MODE_NORMAL;
}
