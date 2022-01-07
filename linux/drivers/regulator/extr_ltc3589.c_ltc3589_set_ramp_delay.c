
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct ltc3589 {int regmap; } ;
struct TYPE_2__ {int apply_bit; } ;


 int EINVAL ;
 int LTC3589_VRRCR ;
 int ffs (int ) ;
 struct ltc3589* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ltc3589_set_ramp_delay(struct regulator_dev *rdev, int ramp_delay)
{
 struct ltc3589 *ltc3589 = rdev_get_drvdata(rdev);
 int sel, shift;

 if (unlikely(ramp_delay <= 0))
  return -EINVAL;


 shift = ffs(rdev->desc->apply_bit) - 1;


 for (sel = 0; sel < 4; sel++) {
  if ((880 << sel) >= ramp_delay) {
   return regmap_update_bits(ltc3589->regmap,
        LTC3589_VRRCR,
        0x3 << shift, sel << shift);
  }
 }
 return -EINVAL;
}
