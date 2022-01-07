
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {int vsel_reg; } ;


 unsigned int FPWM_MODE ;
 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_NORMAL ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int rk8xx_get_mode(struct regulator_dev *rdev)
{
 unsigned int val;
 int err;

 err = regmap_read(rdev->regmap, rdev->desc->vsel_reg, &val);
 if (err)
  return err;

 if (val & FPWM_MODE)
  return REGULATOR_MODE_FAST;
 else
  return REGULATOR_MODE_NORMAL;
}
