
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct max77802_regulator_prv {unsigned int* opmode; } ;
struct TYPE_2__ {int enable_mask; int enable_reg; } ;


 unsigned int MAX77802_OFF_PWRREQ ;
 int max77802_get_opmode_shift (int) ;
 struct max77802_regulator_prv* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77802_set_suspend_disable(struct regulator_dev *rdev)
{
 unsigned int val = MAX77802_OFF_PWRREQ;
 struct max77802_regulator_prv *max77802 = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);
 int shift = max77802_get_opmode_shift(id);

 max77802->opmode[id] = val;
 return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
      rdev->desc->enable_mask, val << shift);
}
