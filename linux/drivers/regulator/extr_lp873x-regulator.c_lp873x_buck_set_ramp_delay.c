
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* constraints; } ;
struct lp873x {int dev; int regmap; } ;
struct TYPE_4__ {int ctrl2_reg; } ;
struct TYPE_3__ {int ramp_delay; } ;


 int LP873X_BUCK0_CTRL_2_BUCK0_SLEW_RATE ;
 unsigned int __ffs (int ) ;
 int dev_err (int ,char*,int) ;
 int * lp873x_buck_ramp_delay ;
 struct lp873x* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 TYPE_2__* regulators ;

__attribute__((used)) static int lp873x_buck_set_ramp_delay(struct regulator_dev *rdev,
          int ramp_delay)
{
 int id = rdev_get_id(rdev);
 struct lp873x *lp873 = rdev_get_drvdata(rdev);
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

 ret = regmap_update_bits(lp873->regmap, regulators[id].ctrl2_reg,
     LP873X_BUCK0_CTRL_2_BUCK0_SLEW_RATE,
     reg << __ffs(LP873X_BUCK0_CTRL_2_BUCK0_SLEW_RATE));
 if (ret) {
  dev_err(lp873->dev, "SLEW RATE write failed: %d\n", ret);
  return ret;
 }

 rdev->constraints->ramp_delay = lp873x_buck_ramp_delay[reg];

 return 0;
}
