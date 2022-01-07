
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8973_chip {int tz_device; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int thermal_zone_device_update (int ,int ) ;

__attribute__((used)) static irqreturn_t max8973_thermal_irq(int irq, void *data)
{
 struct max8973_chip *mchip = data;

 thermal_zone_device_update(mchip->tz_device,
       THERMAL_EVENT_UNSPECIFIED);

 return IRQ_HANDLED;
}
