
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct npcm7xx_gpio {scalar_t__ base; int gc; } ;
struct irq_data {TYPE_1__* chip; int irq; int hwirq; } ;
struct TYPE_2__ {int parent_device; } ;


 unsigned int BIT (int ) ;
 int EINVAL ;





 scalar_t__ NPCM7XX_GP_N_EVBE ;
 scalar_t__ NPCM7XX_GP_N_EVTYP ;
 scalar_t__ NPCM7XX_GP_N_POL ;
 int dev_dbg (int ,char*,...) ;
 struct npcm7xx_gpio* gpiochip_get_data (int ) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int npcm_gpio_clr (int *,scalar_t__,unsigned int) ;
 int npcm_gpio_set (int *,scalar_t__,unsigned int) ;

__attribute__((used)) static int npcmgpio_set_irq_type(struct irq_data *d, unsigned int type)
{
 struct npcm7xx_gpio *bank =
  gpiochip_get_data(irq_data_get_irq_chip_data(d));
 unsigned int gpio = BIT(d->hwirq);

 dev_dbg(d->chip->parent_device, "setirqtype: %u.%u = %u\n", gpio,
  d->irq, type);
 switch (type) {
 case 130:
  dev_dbg(d->chip->parent_device, "edge.rising\n");
  npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_EVBE, gpio);
  npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_POL, gpio);
  break;
 case 131:
  dev_dbg(d->chip->parent_device, "edge.falling\n");
  npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_EVBE, gpio);
  npcm_gpio_set(&bank->gc, bank->base + NPCM7XX_GP_N_POL, gpio);
  break;
 case 132:
  dev_dbg(d->chip->parent_device, "edge.both\n");
  npcm_gpio_set(&bank->gc, bank->base + NPCM7XX_GP_N_EVBE, gpio);
  break;
 case 128:
  dev_dbg(d->chip->parent_device, "level.low\n");
  npcm_gpio_set(&bank->gc, bank->base + NPCM7XX_GP_N_POL, gpio);
  break;
 case 129:
  dev_dbg(d->chip->parent_device, "level.high\n");
  npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_POL, gpio);
  break;
 default:
  dev_dbg(d->chip->parent_device, "invalid irq type\n");
  return -EINVAL;
 }

 if (type & (129 | 128)) {
  npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_EVTYP, gpio);
  irq_set_handler_locked(d, handle_level_irq);
 } else if (type & (132 | 130
      | 131)) {
  npcm_gpio_set(&bank->gc, bank->base + NPCM7XX_GP_N_EVTYP, gpio);
  irq_set_handler_locked(d, handle_edge_irq);
 }

 return 0;
}
