
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int uniphier_ld20_get_gpio_muxval(unsigned int pin,
      unsigned int gpio_offset)
{
 if (gpio_offset == 132 || gpio_offset == 135)
  return 13;

 if (gpio_offset >= 120 && gpio_offset <= 143)
  return 14;

 return 15;
}
