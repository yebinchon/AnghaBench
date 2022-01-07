
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_bl_data {int pwm; int power_supply; scalar_t__ enable_gpio; TYPE_1__* dev; } ;
struct device_node {int phandle; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ gpiod_get_value_cansleep (scalar_t__) ;
 int pwm_is_enabled (int ) ;
 int regulator_is_enabled (int ) ;

__attribute__((used)) static int pwm_backlight_initial_power_state(const struct pwm_bl_data *pb)
{
 struct device_node *node = pb->dev->of_node;


 if (!node || !node->phandle)
  return FB_BLANK_UNBLANK;
 if (pb->enable_gpio && gpiod_get_value_cansleep(pb->enable_gpio) == 0)
  return FB_BLANK_POWERDOWN;


 if (!regulator_is_enabled(pb->power_supply))
  return FB_BLANK_POWERDOWN;


 if (!pwm_is_enabled(pb->pwm))
  return FB_BLANK_POWERDOWN;

 return FB_BLANK_UNBLANK;
}
