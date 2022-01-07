
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port; } ;
struct pch_udc_dev {TYPE_1__ vbus_gpio; } ;


 scalar_t__ gpio_get_value (scalar_t__) ;

__attribute__((used)) static int pch_vbus_gpio_get_value(struct pch_udc_dev *dev)
{
 int vbus = 0;

 if (dev->vbus_gpio.port)
  vbus = gpio_get_value(dev->vbus_gpio.port) ? 1 : 0;
 else
  vbus = -1;

 return vbus;
}
