
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppc4xx_spi {int * gpios; TYPE_1__* master; } ;
struct TYPE_2__ {int num_chipselect; } ;


 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int kfree (int *) ;

__attribute__((used)) static void free_gpios(struct ppc4xx_spi *hw)
{
 if (hw->master->num_chipselect) {
  int i;
  for (i = 0; i < hw->master->num_chipselect; i++)
   if (gpio_is_valid(hw->gpios[i]))
    gpio_free(hw->gpios[i]);

  kfree(hw->gpios);
  hw->gpios = ((void*)0);
 }
}
