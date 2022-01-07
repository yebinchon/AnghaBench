
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int bypass_val_on; unsigned int bypass_mask; int bypass_reg; } ;


 int regmap_read (int ,int ,unsigned int*) ;

int regulator_get_bypass_regmap(struct regulator_dev *rdev, bool *enable)
{
 unsigned int val;
 unsigned int val_on = rdev->desc->bypass_val_on;
 int ret;

 ret = regmap_read(rdev->regmap, rdev->desc->bypass_reg, &val);
 if (ret != 0)
  return ret;

 if (!val_on)
  val_on = rdev->desc->bypass_mask;

 *enable = (val & rdev->desc->bypass_mask) == val_on;

 return 0;
}
