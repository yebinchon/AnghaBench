
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct regulator_dev {TYPE_1__* desc; int dev; } ;
struct ab3100_regulator {int regreg; int dev; } ;
struct TYPE_2__ {int n_voltages; int* volt_table; } ;


 int EINVAL ;
 int abx500_get_register_interruptible (int ,int ,int ,int*) ;
 int dev_err (int *,char*,int ) ;
 int dev_warn (int *,char*,int ) ;
 struct ab3100_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int ab3100_get_voltage_regulator(struct regulator_dev *reg)
{
 struct ab3100_regulator *abreg = rdev_get_drvdata(reg);
 u8 regval;
 int err;





 err = abx500_get_register_interruptible(abreg->dev, 0,
      abreg->regreg, &regval);
 if (err) {
  dev_warn(&reg->dev,
    "failed to get regulator value in register %02x\n",
    abreg->regreg);
  return err;
 }


 regval &= 0xE0;
 regval >>= 5;

 if (regval >= reg->desc->n_voltages) {
  dev_err(&reg->dev,
   "regulator register %02x contains an illegal voltage setting\n",
   abreg->regreg);
  return -EINVAL;
 }

 return reg->desc->volt_table[regval];
}
