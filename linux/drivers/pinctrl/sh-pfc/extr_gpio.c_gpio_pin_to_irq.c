
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_pfc {int* irqs; TYPE_1__* info; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_4__ {short* gpios; } ;
struct TYPE_3__ {unsigned int gpio_irq_size; TYPE_2__* gpio_irq; } ;


 struct sh_pfc* gpio_to_pfc (struct gpio_chip*) ;

__attribute__((used)) static int gpio_pin_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct sh_pfc *pfc = gpio_to_pfc(gc);
 unsigned int i, k;

 for (i = 0; i < pfc->info->gpio_irq_size; i++) {
  const short *gpios = pfc->info->gpio_irq[i].gpios;

  for (k = 0; gpios[k] >= 0; k++) {
   if (gpios[k] == offset)
    goto found;
  }
 }

 return 0;

found:
 return pfc->irqs[i];
}
