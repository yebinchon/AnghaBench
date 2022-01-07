
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {int enable_reg; } ;


 int CPCAP_BIT_AUDIO_LOW_PWR ;
 unsigned int REGULATOR_MODE_NORMAL ;
 unsigned int REGULATOR_MODE_STANDBY ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static unsigned int cpcap_regulator_get_mode(struct regulator_dev *rdev)
{
 int value;

 regmap_read(rdev->regmap, rdev->desc->enable_reg, &value);

 if (value & CPCAP_BIT_AUDIO_LOW_PWR)
  return REGULATOR_MODE_STANDBY;

 return REGULATOR_MODE_NORMAL;
}
