
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port; scalar_t__ intr; } ;
struct pch_udc_dev {TYPE_1__ vbus_gpio; } ;


 int free_irq (scalar_t__,struct pch_udc_dev*) ;
 int gpio_free (scalar_t__) ;

__attribute__((used)) static void pch_vbus_gpio_free(struct pch_udc_dev *dev)
{
 if (dev->vbus_gpio.intr)
  free_irq(dev->vbus_gpio.intr, dev);

 if (dev->vbus_gpio.port)
  gpio_free(dev->vbus_gpio.port);
}
