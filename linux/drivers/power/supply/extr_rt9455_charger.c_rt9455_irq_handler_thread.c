
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt9455_info {scalar_t__ charger; int * regmap_fields; TYPE_1__* client; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int irq; struct device dev; } ;


 size_t F_STAT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_dbg (struct device*,char*,unsigned int) ;
 int dev_err (struct device*,char*) ;
 int power_supply_changed (scalar_t__) ;
 int regmap_field_read (int ,unsigned int*) ;
 int rt9455_irq_handler_check_irq1_register (struct rt9455_info*,int*,int*) ;
 int rt9455_irq_handler_check_irq2_register (struct rt9455_info*,int,int*) ;
 int rt9455_irq_handler_check_irq3_register (struct rt9455_info*,int*) ;

__attribute__((used)) static irqreturn_t rt9455_irq_handler_thread(int irq, void *data)
{
 struct rt9455_info *info = data;
 struct device *dev;
 bool alert_userspace = 0;
 bool is_battery_absent = 0;
 unsigned int status;
 int ret;

 if (!info)
  return IRQ_NONE;

 dev = &info->client->dev;

 if (irq != info->client->irq) {
  dev_err(dev, "Interrupt is not for RT9455 charger\n");
  return IRQ_NONE;
 }

 ret = regmap_field_read(info->regmap_fields[F_STAT], &status);
 if (ret) {
  dev_err(dev, "Failed to read STAT bits\n");
  return IRQ_HANDLED;
 }
 dev_dbg(dev, "Charger status is %d\n", status);
 ret = rt9455_irq_handler_check_irq1_register(info, &is_battery_absent,
           &alert_userspace);
 if (ret) {
  dev_err(dev, "Failed to handle IRQ1 register\n");
  return IRQ_HANDLED;
 }

 ret = rt9455_irq_handler_check_irq2_register(info, is_battery_absent,
           &alert_userspace);
 if (ret) {
  dev_err(dev, "Failed to handle IRQ2 register\n");
  return IRQ_HANDLED;
 }

 ret = rt9455_irq_handler_check_irq3_register(info, &alert_userspace);
 if (ret) {
  dev_err(dev, "Failed to handle IRQ3 register\n");
  return IRQ_HANDLED;
 }

 if (alert_userspace) {





  if (info->charger)
   power_supply_changed(info->charger);
 }

 return IRQ_HANDLED;
}
