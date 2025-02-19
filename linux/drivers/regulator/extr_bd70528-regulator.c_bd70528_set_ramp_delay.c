
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int dev; int regmap; } ;
struct TYPE_2__ {int name; int vsel_reg; } ;


 int BD70528_MASK_BUCK_RAMP ;
 unsigned int BD70528_SIFT_BUCK_RAMP ;
 unsigned int BUCK_RAMPRATE_125MV ;
 unsigned int BUCK_RAMPRATE_250MV ;
 int BUCK_RAMP_MAX ;
 int EINVAL ;
 int dev_err (int *,char*,int ,int) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int bd70528_set_ramp_delay(struct regulator_dev *rdev, int ramp_delay)
{
 if (ramp_delay > 0 && ramp_delay <= BUCK_RAMP_MAX) {
  unsigned int ramp_value = BUCK_RAMPRATE_250MV;

  if (ramp_delay <= 125)
   ramp_value = BUCK_RAMPRATE_125MV;

  return regmap_update_bits(rdev->regmap, rdev->desc->vsel_reg,
      BD70528_MASK_BUCK_RAMP,
      ramp_value << BD70528_SIFT_BUCK_RAMP);
 }
 dev_err(&rdev->dev, "%s: ramp_delay: %d not supported\n",
  rdev->desc->name, ramp_delay);
 return -EINVAL;
}
