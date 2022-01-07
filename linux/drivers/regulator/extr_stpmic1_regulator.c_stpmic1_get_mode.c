
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int enable_reg; } ;


 unsigned int REGULATOR_MODE_NORMAL ;
 unsigned int REGULATOR_MODE_STANDBY ;
 int STPMIC1_BUCK_MODE_LP ;
 struct regmap* rdev_get_regmap (struct regulator_dev*) ;
 int regmap_read (struct regmap*,int ,int*) ;

__attribute__((used)) static unsigned int stpmic1_get_mode(struct regulator_dev *rdev)
{
 int value;
 struct regmap *regmap = rdev_get_regmap(rdev);

 regmap_read(regmap, rdev->desc->enable_reg, &value);

 if (value & STPMIC1_BUCK_MODE_LP)
  return REGULATOR_MODE_STANDBY;

 return REGULATOR_MODE_NORMAL;
}
