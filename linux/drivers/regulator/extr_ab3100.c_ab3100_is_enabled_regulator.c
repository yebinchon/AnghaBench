
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dev; } ;
struct ab3100_regulator {int regreg; int dev; } ;


 int AB3100_REG_ON_MASK ;
 int abx500_get_register_interruptible (int ,int ,int ,int*) ;
 int dev_err (int *,char*,int ) ;
 struct ab3100_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int ab3100_is_enabled_regulator(struct regulator_dev *reg)
{
 struct ab3100_regulator *abreg = rdev_get_drvdata(reg);
 u8 regval;
 int err;

 err = abx500_get_register_interruptible(abreg->dev, 0, abreg->regreg,
      &regval);
 if (err) {
  dev_err(&reg->dev, "unable to get register 0x%x\n",
   abreg->regreg);
  return err;
 }

 return regval & AB3100_REG_ON_MASK;
}
