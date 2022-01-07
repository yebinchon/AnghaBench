
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; int dev; } ;
struct TYPE_2__ {int enable_reg; int enable_mask; } ;


 unsigned int BIT (int ) ;
 int CTRL_PG_BIT ;
 int CTRL_TO_BIT ;
 int ENOTRECOVERABLE ;
 int MAX_CTRL_READ_TRIES ;
 int dev_err (int *,char*,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tps65090_try_enable_fet(struct regulator_dev *rdev)
{
 unsigned int control;
 int ret, i;

 ret = regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
     rdev->desc->enable_mask,
     rdev->desc->enable_mask);
 if (ret < 0) {
  dev_err(&rdev->dev, "Error in updating reg %#x\n",
   rdev->desc->enable_reg);
  return ret;
 }

 for (i = 0; i < MAX_CTRL_READ_TRIES; i++) {
  ret = regmap_read(rdev->regmap, rdev->desc->enable_reg,
      &control);
  if (ret < 0)
   return ret;

  if (!(control & BIT(CTRL_TO_BIT)))
   break;

  usleep_range(1000, 1500);
 }
 if (!(control & BIT(CTRL_PG_BIT)))
  return -ENOTRECOVERABLE;

 return 0;
}
