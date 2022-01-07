
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucs1002_info {int present; int charger; int regmap; } ;
typedef int irqreturn_t ;


 int F_ADET_PIN ;
 int IRQ_HANDLED ;
 int UCS1002_REG_OTHER_STATUS ;
 int power_supply_changed (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static irqreturn_t ucs1002_charger_irq(int irq, void *data)
{
 int ret, regval;
 bool present;
 struct ucs1002_info *info = data;

 present = info->present;

 ret = regmap_read(info->regmap, UCS1002_REG_OTHER_STATUS, &regval);
 if (ret)
  return IRQ_HANDLED;


 info->present = regval & F_ADET_PIN;


 if (present != info->present)
  power_supply_changed(info->charger);

 return IRQ_HANDLED;
}
