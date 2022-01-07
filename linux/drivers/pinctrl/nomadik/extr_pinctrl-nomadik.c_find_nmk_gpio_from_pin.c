
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int base; unsigned int ngpio; } ;
struct nmk_gpio_chip {TYPE_1__ chip; } ;


 int NMK_MAX_BANKS ;
 struct nmk_gpio_chip** nmk_gpio_chips ;

__attribute__((used)) static struct nmk_gpio_chip *find_nmk_gpio_from_pin(unsigned pin)
{
 int i;
 struct nmk_gpio_chip *nmk_gpio;

 for(i = 0; i < NMK_MAX_BANKS; i++) {
  nmk_gpio = nmk_gpio_chips[i];
  if (!nmk_gpio)
   continue;
  if (pin >= nmk_gpio->chip.base &&
   pin < nmk_gpio->chip.base + nmk_gpio->chip.ngpio)
   return nmk_gpio;
 }
 return ((void*)0);
}
