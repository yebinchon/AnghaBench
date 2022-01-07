
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct ltc3589 {int regmap; } ;
struct TYPE_2__ {int vsel_mask; scalar_t__ vsel_reg; } ;


 struct ltc3589* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,scalar_t__,int ,int) ;
 int regulator_map_voltage_linear (struct regulator_dev*,int,int) ;

__attribute__((used)) static int ltc3589_set_suspend_voltage(struct regulator_dev *rdev, int uV)
{
 struct ltc3589 *ltc3589 = rdev_get_drvdata(rdev);
 int sel;

 sel = regulator_map_voltage_linear(rdev, uV, uV);
 if (sel < 0)
  return sel;


 return regmap_update_bits(ltc3589->regmap, rdev->desc->vsel_reg + 1,
      rdev->desc->vsel_mask, sel);
}
