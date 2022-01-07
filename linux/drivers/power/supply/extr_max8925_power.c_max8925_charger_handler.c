
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_power_info {int ac_online; struct max8925_chip* chip; } ;
struct max8925_chip {int irq_base; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int __set_charger (struct max8925_power_info*,int) ;
 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*) ;

__attribute__((used)) static irqreturn_t max8925_charger_handler(int irq, void *data)
{
 struct max8925_power_info *info = (struct max8925_power_info *)data;
 struct max8925_chip *chip = info->chip;

 switch (irq - chip->irq_base) {
 case 136:
  info->ac_online = 1;
  __set_charger(info, 1);
  dev_dbg(chip->dev, "Adapter inserted\n");
  break;
 case 138:
  info->ac_online = 0;
  __set_charger(info, 0);
  dev_dbg(chip->dev, "Adapter removed\n");
  break;
 case 131:

  dev_dbg(chip->dev, "Battery temperature is out of range\n");

 case 137:
  dev_dbg(chip->dev, "Error detection\n");
  __set_charger(info, 0);
  break;
 case 130:

  dev_dbg(chip->dev, "Battery temperature is in range\n");
  break;
 case 132:

  dev_info(chip->dev, "Sys power is too low\n");
  break;
 case 133:
  dev_dbg(chip->dev, "Sys power is above low threshold\n");
  break;
 case 135:
  __set_charger(info, 0);
  dev_dbg(chip->dev, "Charging is done\n");
  break;
 case 128:
  dev_dbg(chip->dev, "Charging in top-off mode\n");
  break;
 case 129:
  __set_charger(info, 0);
  dev_dbg(chip->dev, "Safe timer is expired\n");
  break;
 case 134:
  __set_charger(info, 0);
  dev_dbg(chip->dev, "Charger is reset\n");
  break;
 }
 return IRQ_HANDLED;
}
