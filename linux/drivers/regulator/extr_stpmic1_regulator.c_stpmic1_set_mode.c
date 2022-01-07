
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int enable_reg; } ;


 int EINVAL ;


 int STPMIC1_BUCK_MODE_LP ;
 int STPMIC1_BUCK_MODE_NORMAL ;
 struct regmap* rdev_get_regmap (struct regulator_dev*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static int stpmic1_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 int value;
 struct regmap *regmap = rdev_get_regmap(rdev);

 switch (mode) {
 case 129:
  value = STPMIC1_BUCK_MODE_NORMAL;
  break;
 case 128:
  value = STPMIC1_BUCK_MODE_LP;
  break;
 default:
  return -EINVAL;
 }

 return regmap_update_bits(regmap, rdev->desc->enable_reg,
      STPMIC1_BUCK_MODE_LP, value);
}
