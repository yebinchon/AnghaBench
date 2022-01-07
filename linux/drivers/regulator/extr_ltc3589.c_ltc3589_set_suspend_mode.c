
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct ltc3589 {int regmap; } ;
struct TYPE_2__ {int apply_bit; } ;


 int LTC3589_VCCR ;
 unsigned int REGULATOR_MODE_STANDBY ;
 struct ltc3589* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int ltc3589_set_suspend_mode(struct regulator_dev *rdev,
        unsigned int mode)
{
 struct ltc3589 *ltc3589 = rdev_get_drvdata(rdev);
 int mask, bit = 0;


 mask = rdev->desc->apply_bit << 1;

 if (mode == REGULATOR_MODE_STANDBY)
  bit = mask;

 mask |= rdev->desc->apply_bit;
 bit |= rdev->desc->apply_bit;
 return regmap_update_bits(ltc3589->regmap, LTC3589_VCCR, mask, bit);
}
