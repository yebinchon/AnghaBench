
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dev; } ;
struct ab3100_regulator {int regreg; int dev; } ;


 int AB3100_REG_ON_MASK ;
 int abx500_get_register_interruptible (int ,int ,int ,int*) ;
 int abx500_set_register_interruptible (int ,int ,int ,int) ;
 int dev_warn (int *,char*,int ) ;
 struct ab3100_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int ab3100_enable_regulator(struct regulator_dev *reg)
{
 struct ab3100_regulator *abreg = rdev_get_drvdata(reg);
 int err;
 u8 regval;

 err = abx500_get_register_interruptible(abreg->dev, 0, abreg->regreg,
      &regval);
 if (err) {
  dev_warn(&reg->dev, "failed to get regid %d value\n",
    abreg->regreg);
  return err;
 }


 if (regval & AB3100_REG_ON_MASK)
  return 0;

 regval |= AB3100_REG_ON_MASK;

 err = abx500_set_register_interruptible(abreg->dev, 0, abreg->regreg,
      regval);
 if (err) {
  dev_warn(&reg->dev, "failed to set regid %d value\n",
    abreg->regreg);
  return err;
 }

 return 0;
}
