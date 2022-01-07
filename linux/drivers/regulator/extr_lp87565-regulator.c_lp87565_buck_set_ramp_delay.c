
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* constraints; int dev; int regmap; } ;
struct TYPE_4__ {int ctrl2_reg; } ;
struct TYPE_3__ {int ramp_delay; } ;


 int LP87565_BUCK_CTRL_2_SLEW_RATE ;
 unsigned int __ffs (int ) ;
 int dev_err (int *,char*,int) ;
 int* lp87565_buck_ramp_delay ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 TYPE_2__* regulators ;

__attribute__((used)) static int lp87565_buck_set_ramp_delay(struct regulator_dev *rdev,
           int ramp_delay)
{
 int id = rdev_get_id(rdev);
 unsigned int reg;
 int ret;

 if (ramp_delay <= 470)
  reg = 7;
 else if (ramp_delay <= 940)
  reg = 6;
 else if (ramp_delay <= 1900)
  reg = 5;
 else if (ramp_delay <= 3800)
  reg = 4;
 else if (ramp_delay <= 7500)
  reg = 3;
 else if (ramp_delay <= 10000)
  reg = 2;
 else if (ramp_delay <= 15000)
  reg = 1;
 else
  reg = 0;

 ret = regmap_update_bits(rdev->regmap, regulators[id].ctrl2_reg,
     LP87565_BUCK_CTRL_2_SLEW_RATE,
     reg << __ffs(LP87565_BUCK_CTRL_2_SLEW_RATE));
 if (ret) {
  dev_err(&rdev->dev, "SLEW RATE write failed: %d\n", ret);
  return ret;
 }

 rdev->constraints->ramp_delay = lp87565_buck_ramp_delay[reg];


 rdev->constraints->ramp_delay =
    rdev->constraints->ramp_delay * 85 / 100;

 return 0;
}
