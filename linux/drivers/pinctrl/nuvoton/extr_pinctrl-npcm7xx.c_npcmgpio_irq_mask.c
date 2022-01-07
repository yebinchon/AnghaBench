
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct npcm7xx_gpio {scalar_t__ base; } ;
struct irq_data {unsigned int hwirq; int irq; TYPE_1__* chip; } ;
struct TYPE_2__ {int parent_device; } ;


 int BIT (unsigned int) ;
 scalar_t__ NPCM7XX_GP_N_EVENC ;
 int dev_dbg (int ,char*,unsigned int,int ) ;
 struct npcm7xx_gpio* gpiochip_get_data (int ) ;
 int iowrite32 (int ,scalar_t__) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void npcmgpio_irq_mask(struct irq_data *d)
{
 struct npcm7xx_gpio *bank =
  gpiochip_get_data(irq_data_get_irq_chip_data(d));
 unsigned int gpio = d->hwirq;


 dev_dbg(d->chip->parent_device, "irq_mask: %u.%u\n", gpio, d->irq);
 iowrite32(BIT(gpio), bank->base + NPCM7XX_GP_N_EVENC);
}
