
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_backlight {int gpiod; scalar_t__ def_value; TYPE_1__* dev; } ;
struct device_node {int phandle; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static int gpio_backlight_initial_power_state(struct gpio_backlight *gbl)
{
 struct device_node *node = gbl->dev->of_node;


 if (!node || !node->phandle)
  return gbl->def_value ? FB_BLANK_UNBLANK : FB_BLANK_POWERDOWN;


 if (gpiod_get_value_cansleep(gbl->gpiod) == 0)
  return FB_BLANK_POWERDOWN;

 return FB_BLANK_UNBLANK;
}
