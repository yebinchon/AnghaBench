
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AXP20X_GPIO0_CTRL ;
 int AXP20X_GPIO1_CTRL ;
 int AXP20X_GPIO2_CTRL ;
 int EINVAL ;

__attribute__((used)) static int axp20x_gpio_get_reg(unsigned int offset)
{
 switch (offset) {
 case 0:
  return AXP20X_GPIO0_CTRL;
 case 1:
  return AXP20X_GPIO1_CTRL;
 case 2:
  return AXP20X_GPIO2_CTRL;
 }

 return -EINVAL;
}
