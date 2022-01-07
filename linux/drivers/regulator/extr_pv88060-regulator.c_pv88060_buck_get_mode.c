
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;
struct pv88060_regulator {int conf; } ;



 unsigned int PV88060_BUCK_MODE_MASK ;


 int REGULATOR_MODE_FAST ;
 int REGULATOR_MODE_NORMAL ;
 int REGULATOR_MODE_STANDBY ;
 struct pv88060_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int pv88060_buck_get_mode(struct regulator_dev *rdev)
{
 struct pv88060_regulator *info = rdev_get_drvdata(rdev);
 unsigned int data;
 int ret, mode = 0;

 ret = regmap_read(rdev->regmap, info->conf, &data);
 if (ret < 0)
  return ret;

 switch (data & PV88060_BUCK_MODE_MASK) {
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
