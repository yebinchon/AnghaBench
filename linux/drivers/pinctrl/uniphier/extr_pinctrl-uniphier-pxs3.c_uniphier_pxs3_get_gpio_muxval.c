
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int uniphier_pxs3_get_gpio_muxval(unsigned int pin,
      unsigned int gpio_offset)
{
 if (gpio_offset >= 120 && gpio_offset <= 143) {
  if (pin >= 219 && pin <= 234)
   return 0;

  return 14;
 }

 return 15;
}
