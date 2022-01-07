
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; int dev; } ;
struct max77802_regulator_prv {scalar_t__* opmode; } ;
struct TYPE_2__ {int enable_mask; int enable_reg; int name; } ;


 int EINVAL ;
 unsigned int MAX77802_LP_PWRREQ ;
 scalar_t__ MAX77802_OFF_PWRREQ ;
 scalar_t__ MAX77802_OPMODE_LP ;
 scalar_t__ MAX77802_OPMODE_NORMAL ;


 int dev_warn (int *,char*,int ,unsigned int) ;
 int max77802_get_opmode_shift (int) ;
 struct max77802_regulator_prv* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max77802_set_suspend_mode(struct regulator_dev *rdev,
         unsigned int mode)
{
 struct max77802_regulator_prv *max77802 = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);
 unsigned int val;
 int shift = max77802_get_opmode_shift(id);





 if (max77802->opmode[id] == MAX77802_OFF_PWRREQ) {
  dev_warn(&rdev->dev, "%s: is disabled, mode: 0x%x not set\n",
    rdev->desc->name, mode);
  return 0;
 }

 switch (mode) {
 case 128:





  if (max77802->opmode[id] == MAX77802_OPMODE_NORMAL)
   val = MAX77802_LP_PWRREQ;
  else
   return 0;
  break;
 case 129:





  if (max77802->opmode[id] == MAX77802_OPMODE_LP)
   dev_warn(&rdev->dev, "%s: in Low Power: 0x%x invalid\n",
     rdev->desc->name, mode);
  return 0;
 default:
  dev_warn(&rdev->dev, "%s: regulator mode: 0x%x not supported\n",
    rdev->desc->name, mode);
  return -EINVAL;
 }

 return regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
      rdev->desc->enable_mask, val << shift);
}
