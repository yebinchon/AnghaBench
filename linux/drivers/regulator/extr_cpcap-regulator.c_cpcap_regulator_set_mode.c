
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {int enable_reg; } ;


 int CPCAP_BIT_AUDIO_LOW_PWR ;
 int CPCAP_BIT_AUDIO_NORMAL_MODE ;
 int EINVAL ;


 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int cpcap_regulator_set_mode(struct regulator_dev *rdev,
        unsigned int mode)
{
 int value;

 switch (mode) {
 case 129:
  value = CPCAP_BIT_AUDIO_NORMAL_MODE;
  break;
 case 128:
  value = CPCAP_BIT_AUDIO_LOW_PWR;
  break;
 default:
  return -EINVAL;
 }

 return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
      CPCAP_BIT_AUDIO_LOW_PWR, value);
}
