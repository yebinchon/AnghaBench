
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int mask; int shift; int reg; } ;
struct da9055_regulator_info {TYPE_1__ mode; } ;
struct da9055_regulator {int da9055; struct da9055_regulator_info* info; } ;





 int REGULATOR_MODE_FAST ;
 int REGULATOR_MODE_NORMAL ;
 int REGULATOR_MODE_STANDBY ;
 int da9055_reg_read (int ,int ) ;
 struct da9055_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static unsigned int da9055_buck_get_mode(struct regulator_dev *rdev)
{
 struct da9055_regulator *regulator = rdev_get_drvdata(rdev);
 struct da9055_regulator_info *info = regulator->info;
 int ret, mode = 0;

 ret = da9055_reg_read(regulator->da9055, info->mode.reg);
 if (ret < 0)
  return ret;

 switch ((ret & info->mode.mask) >> info->mode.shift) {
 case 128:
  mode = REGULATOR_MODE_FAST;
  break;
 case 130:
  mode = REGULATOR_MODE_NORMAL;
  break;
 case 129:
  mode = REGULATOR_MODE_STANDBY;
  break;
 }

 return mode;
}
