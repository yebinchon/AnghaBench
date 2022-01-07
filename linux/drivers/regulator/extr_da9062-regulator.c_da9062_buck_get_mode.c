
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct da9062_regulator {int sleep; int mode; } ;






 int REGULATOR_MODE_FAST ;
 int REGULATOR_MODE_NORMAL ;
 int REGULATOR_MODE_STANDBY ;
 struct da9062_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static unsigned da9062_buck_get_mode(struct regulator_dev *rdev)
{
 struct da9062_regulator *regl = rdev_get_drvdata(rdev);
 unsigned int val, mode = 0;
 int ret;

 ret = regmap_field_read(regl->mode, &val);
 if (ret < 0)
  return ret;

 switch (val) {
 default:
 case 130:
  mode = REGULATOR_MODE_FAST | REGULATOR_MODE_STANDBY;

  break;
 case 129:
  return REGULATOR_MODE_STANDBY;
 case 128:
  return REGULATOR_MODE_FAST;
 case 131:
  return REGULATOR_MODE_NORMAL;
 }

 ret = regmap_field_read(regl->sleep, &val);
 if (ret < 0)
  return 0;

 if (val)
  mode &= REGULATOR_MODE_STANDBY;
 else
  mode &= REGULATOR_MODE_NORMAL | REGULATOR_MODE_FAST;

 return mode;
}
