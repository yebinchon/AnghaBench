
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65090_regulator {int overcurrent_wait; } ;
struct regulator_dev {TYPE_1__* desc; int dev; int regmap; } ;
struct TYPE_2__ {int enable_reg; } ;


 int CTRL_WT_BIT ;
 int MAX_OVERCURRENT_WAIT ;
 int dev_err (int *,char*,int ) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int tps65090_reg_set_overcurrent_wait(struct tps65090_regulator *ri,
          struct regulator_dev *rdev)
{
 int ret;

 ret = regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
     MAX_OVERCURRENT_WAIT << CTRL_WT_BIT,
     ri->overcurrent_wait << CTRL_WT_BIT);
 if (ret) {
  dev_err(&rdev->dev, "Error updating overcurrent wait %#x\n",
   rdev->desc->enable_reg);
 }

 return ret;
}
