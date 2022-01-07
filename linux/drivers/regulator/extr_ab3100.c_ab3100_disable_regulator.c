
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dev; } ;
struct ab3100_regulator {scalar_t__ regreg; int dev; } ;


 scalar_t__ AB3100_LDO_D ;
 int AB3100_REG_ON_MASK ;
 int abx500_get_register_interruptible (int ,int ,scalar_t__,int*) ;
 int abx500_set_register_interruptible (int ,int ,scalar_t__,int) ;
 int dev_err (int *,char*,scalar_t__) ;
 int dev_info (int *,char*) ;
 int pr_info (char*) ;
 struct ab3100_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int ab3100_disable_regulator(struct regulator_dev *reg)
{
 struct ab3100_regulator *abreg = rdev_get_drvdata(reg);
 int err;
 u8 regval;





 pr_info("Called ab3100_disable_regulator\n");
 if (abreg->regreg == AB3100_LDO_D) {
  dev_info(&reg->dev, "disabling LDO D - shut down system\n");

  return abx500_set_register_interruptible(abreg->dev, 0,
        AB3100_LDO_D, 0x00U);
 }




 err = abx500_get_register_interruptible(abreg->dev, 0, abreg->regreg,
      &regval);
 if (err) {
  dev_err(&reg->dev, "unable to get register 0x%x\n",
   abreg->regreg);
  return err;
 }
 regval &= ~AB3100_REG_ON_MASK;
 return abx500_set_register_interruptible(abreg->dev, 0, abreg->regreg,
       regval);
}
