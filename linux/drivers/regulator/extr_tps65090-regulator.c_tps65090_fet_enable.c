
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int dev; int regmap; } ;
struct TYPE_2__ {int enable_reg; int enable_mask; } ;


 int ENOTRECOVERABLE ;
 int MAX_FET_ENABLE_TRIES ;
 int WARN_ON (int) ;
 int dev_warn (int *,char*,int ,...) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int tps65090_try_enable_fet (struct regulator_dev*) ;

__attribute__((used)) static int tps65090_fet_enable(struct regulator_dev *rdev)
{
 int ret, tries;





 tries = 0;
 while (1) {
  ret = tps65090_try_enable_fet(rdev);
  if (!ret)
   break;
  if (ret != -ENOTRECOVERABLE || tries == MAX_FET_ENABLE_TRIES)
   goto err;


  ret = regmap_update_bits(rdev->regmap, rdev->desc->enable_reg,
      rdev->desc->enable_mask, 0);
  if (ret)
   goto err;

  tries++;
 }

 if (tries)
  dev_warn(&rdev->dev, "reg %#x enable ok after %d tries\n",
    rdev->desc->enable_reg, tries);

 return 0;
err:
 dev_warn(&rdev->dev, "reg %#x enable failed\n", rdev->desc->enable_reg);
 WARN_ON(1);

 return ret;
}
