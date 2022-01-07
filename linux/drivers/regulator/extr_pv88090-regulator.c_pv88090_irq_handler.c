
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pv88090 {int dev; int regmap; int ** rdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PV88090_E_OVER_TEMP ;
 int PV88090_E_VDD_FLT ;
 int PV88090_MAX_REGULATORS ;
 int PV88090_REG_EVENT_A ;
 int REGULATOR_EVENT_OVER_TEMP ;
 int REGULATOR_EVENT_UNDER_VOLTAGE ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int regulator_lock (int *) ;
 int regulator_notifier_call_chain (int *,int ,int *) ;
 int regulator_unlock (int *) ;

__attribute__((used)) static irqreturn_t pv88090_irq_handler(int irq, void *data)
{
 struct pv88090 *chip = data;
 int i, reg_val, err, ret = IRQ_NONE;

 err = regmap_read(chip->regmap, PV88090_REG_EVENT_A, &reg_val);
 if (err < 0)
  goto error_i2c;

 if (reg_val & PV88090_E_VDD_FLT) {
  for (i = 0; i < PV88090_MAX_REGULATORS; i++) {
   if (chip->rdev[i] != ((void*)0)) {
           regulator_lock(chip->rdev[i]);
    regulator_notifier_call_chain(chip->rdev[i],
     REGULATOR_EVENT_UNDER_VOLTAGE,
     ((void*)0));
           regulator_unlock(chip->rdev[i]);
   }
  }

  err = regmap_write(chip->regmap, PV88090_REG_EVENT_A,
   PV88090_E_VDD_FLT);
  if (err < 0)
   goto error_i2c;

  ret = IRQ_HANDLED;
 }

 if (reg_val & PV88090_E_OVER_TEMP) {
  for (i = 0; i < PV88090_MAX_REGULATORS; i++) {
   if (chip->rdev[i] != ((void*)0)) {
           regulator_lock(chip->rdev[i]);
    regulator_notifier_call_chain(chip->rdev[i],
     REGULATOR_EVENT_OVER_TEMP,
     ((void*)0));
           regulator_unlock(chip->rdev[i]);
   }
  }

  err = regmap_write(chip->regmap, PV88090_REG_EVENT_A,
   PV88090_E_OVER_TEMP);
  if (err < 0)
   goto error_i2c;

  ret = IRQ_HANDLED;
 }

 return ret;

error_i2c:
 dev_err(chip->dev, "I2C error : %d\n", err);
 return IRQ_NONE;
}
