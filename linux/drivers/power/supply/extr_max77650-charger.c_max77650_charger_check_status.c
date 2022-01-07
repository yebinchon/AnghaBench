
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77650_charger_data {int dev; int map; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MAX77650_CHGIN_DETAILS_BITS (int) ;



 int MAX77650_REG_STAT_CHG_B ;
 int dev_err (int ,char*,...) ;
 int max77650_charger_disable (struct max77650_charger_data*) ;
 int max77650_charger_enable (struct max77650_charger_data*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static irqreturn_t max77650_charger_check_status(int irq, void *data)
{
 struct max77650_charger_data *chg = data;
 int rv, reg;

 rv = regmap_read(chg->map, MAX77650_REG_STAT_CHG_B, &reg);
 if (rv) {
  dev_err(chg->dev,
   "unable to read the charger status: %d\n", rv);
  return IRQ_HANDLED;
 }

 switch (MAX77650_CHGIN_DETAILS_BITS(reg)) {
 case 128:
  dev_err(chg->dev, "undervoltage lockout detected, disabling charger\n");
  max77650_charger_disable(chg);
  break;
 case 129:
  dev_err(chg->dev, "overvoltage lockout detected, disabling charger\n");
  max77650_charger_disable(chg);
  break;
 case 130:
  max77650_charger_enable(chg);
  break;
 default:

  break;
 }

 return IRQ_HANDLED;
}
