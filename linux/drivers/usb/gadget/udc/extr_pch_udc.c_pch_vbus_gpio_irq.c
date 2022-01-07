
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_work_fall; int irq_work_rise; int intr; int port; } ;
struct pch_udc_dev {TYPE_1__ vbus_gpio; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ pch_vbus_gpio_get_value (struct pch_udc_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t pch_vbus_gpio_irq(int irq, void *data)
{
 struct pch_udc_dev *dev = (struct pch_udc_dev *)data;

 if (!dev->vbus_gpio.port || !dev->vbus_gpio.intr)
  return IRQ_NONE;

 if (pch_vbus_gpio_get_value(dev))
  schedule_work(&dev->vbus_gpio.irq_work_rise);
 else
  schedule_work(&dev->vbus_gpio.irq_work_fall);

 return IRQ_HANDLED;
}
