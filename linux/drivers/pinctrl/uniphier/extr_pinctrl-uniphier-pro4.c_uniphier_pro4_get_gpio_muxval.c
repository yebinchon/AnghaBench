
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int uniphier_pro4_get_gpio_muxval(unsigned int pin,
      unsigned int gpio_offset)
{
 if (gpio_offset >= 134 && gpio_offset <= 140)
  return 2;

 return 7;
}
