
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9210 {int regmap; int rdev; } ;
typedef int irqreturn_t ;


 unsigned int DA9210_E_NPWRGOOD ;
 unsigned int DA9210_E_OVCURR ;
 unsigned int DA9210_E_TEMP_CRIT ;
 unsigned int DA9210_E_TEMP_WARN ;
 unsigned int DA9210_E_VMAX ;
 int DA9210_REG_EVENT_B ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REGULATOR_EVENT_OVER_CURRENT ;
 int REGULATOR_EVENT_OVER_TEMP ;
 int REGULATOR_EVENT_REGULATION_OUT ;
 int REGULATOR_EVENT_UNDER_VOLTAGE ;
 int dev_err (int ,char*,int) ;
 int regmap_get_device (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int regulator_lock (int ) ;
 int regulator_notifier_call_chain (int ,int ,int *) ;
 int regulator_unlock (int ) ;

__attribute__((used)) static irqreturn_t da9210_irq_handler(int irq, void *data)
{
 struct da9210 *chip = data;
 unsigned int val, handled = 0;
 int error, ret = IRQ_NONE;

 error = regmap_read(chip->regmap, DA9210_REG_EVENT_B, &val);
 if (error < 0)
  goto error_i2c;

 regulator_lock(chip->rdev);

 if (val & DA9210_E_OVCURR) {
  regulator_notifier_call_chain(chip->rdev,
           REGULATOR_EVENT_OVER_CURRENT,
           ((void*)0));
  handled |= DA9210_E_OVCURR;
 }
 if (val & DA9210_E_NPWRGOOD) {
  regulator_notifier_call_chain(chip->rdev,
           REGULATOR_EVENT_UNDER_VOLTAGE,
           ((void*)0));
  handled |= DA9210_E_NPWRGOOD;
 }
 if (val & (DA9210_E_TEMP_WARN | DA9210_E_TEMP_CRIT)) {
  regulator_notifier_call_chain(chip->rdev,
           REGULATOR_EVENT_OVER_TEMP, ((void*)0));
  handled |= val & (DA9210_E_TEMP_WARN | DA9210_E_TEMP_CRIT);
 }
 if (val & DA9210_E_VMAX) {
  regulator_notifier_call_chain(chip->rdev,
           REGULATOR_EVENT_REGULATION_OUT,
           ((void*)0));
  handled |= DA9210_E_VMAX;
 }

 regulator_unlock(chip->rdev);

 if (handled) {

  error = regmap_write(chip->regmap, DA9210_REG_EVENT_B, handled);
  if (error < 0)
   goto error_i2c;

  ret = IRQ_HANDLED;
 }

 return ret;

error_i2c:
 dev_err(regmap_get_device(chip->regmap), "I2C error : %d\n", error);
 return ret;
}
