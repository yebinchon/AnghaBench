
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dev; } ;
struct ab3100_regulator {int regreg; int dev; } ;


 int abx500_get_register_interruptible (int ,int ,int ,int*) ;
 int abx500_set_register_interruptible (int ,int ,int ,int) ;
 int dev_warn (int *,char*,int ) ;
 struct ab3100_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int ab3100_set_voltage_regulator_sel(struct regulator_dev *reg,
         unsigned selector)
{
 struct ab3100_regulator *abreg = rdev_get_drvdata(reg);
 u8 regval;
 int err;

 err = abx500_get_register_interruptible(abreg->dev, 0,
      abreg->regreg, &regval);
 if (err) {
  dev_warn(&reg->dev,
    "failed to get regulator register %02x\n",
    abreg->regreg);
  return err;
 }


 regval &= ~0xE0;
 regval |= (selector << 5);

 err = abx500_set_register_interruptible(abreg->dev, 0,
      abreg->regreg, regval);
 if (err)
  dev_warn(&reg->dev, "failed to set regulator register %02x\n",
   abreg->regreg);

 return err;
}
