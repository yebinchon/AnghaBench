
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_vbus_mach_info {scalar_t__ gpio_vbus_inverted; int gpio_vbus; } ;


 int gpio_get_value (int ) ;

__attribute__((used)) static int is_vbus_powered(struct gpio_vbus_mach_info *pdata)
{
 int vbus;

 vbus = gpio_get_value(pdata->gpio_vbus);
 if (pdata->gpio_vbus_inverted)
  vbus = !vbus;

 return vbus;
}
