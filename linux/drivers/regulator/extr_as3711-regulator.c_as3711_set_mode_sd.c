
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct regulator_dev {int regmap; TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int enable_mask; } ;


 int AS3711_SD_CONTROL_1 ;
 int EINVAL ;



 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int as3711_set_mode_sd(struct regulator_dev *rdev, unsigned int mode)
{
 unsigned int fast_bit = rdev->desc->enable_mask,
  low_noise_bit = fast_bit << 4;
 u8 val;

 switch (mode) {
 case 130:
  val = fast_bit | low_noise_bit;
  break;
 case 128:
  val = low_noise_bit;
  break;
 case 129:
  val = 0;
  break;
 default:
  return -EINVAL;
 }

 return regmap_update_bits(rdev->regmap, AS3711_SD_CONTROL_1,
      low_noise_bit | fast_bit, val);
}
