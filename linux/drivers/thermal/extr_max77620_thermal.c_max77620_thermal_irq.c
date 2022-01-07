
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_therm_info {int irq_tjalarm1; int irq_tjalarm2; int tz_device; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int dev_crit (int ,char*) ;
 int dev_warn (int ,char*) ;
 int thermal_zone_device_update (int ,int ) ;

__attribute__((used)) static irqreturn_t max77620_thermal_irq(int irq, void *data)
{
 struct max77620_therm_info *mtherm = data;

 if (irq == mtherm->irq_tjalarm1)
  dev_warn(mtherm->dev, "Junction Temp Alarm1(120C) occurred\n");
 else if (irq == mtherm->irq_tjalarm2)
  dev_crit(mtherm->dev, "Junction Temp Alarm2(140C) occurred\n");

 thermal_zone_device_update(mtherm->tz_device,
       THERMAL_EVENT_UNSPECIFIED);

 return IRQ_HANDLED;
}
