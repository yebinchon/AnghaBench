
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct npcm7xx_pinctrl {int bank_num; TYPE_6__* gpio_bank; int dev; } ;
struct TYPE_7__ {int ngpio; int base; } ;
struct TYPE_8__ {TYPE_1__ gc; int irq; int irq_chip; int pinctrl_id; } ;


 int IRQ_TYPE_NONE ;
 int dev_err (int ,char*,int) ;
 int dev_name (int ) ;
 int devm_gpiochip_add_data (int ,TYPE_1__*,TYPE_6__*) ;
 int gpiochip_add_pin_range (TYPE_1__*,int ,int ,int ,int ) ;
 int gpiochip_irqchip_add (TYPE_1__*,int *,int ,int ,int ) ;
 int gpiochip_remove (TYPE_1__*) ;
 int gpiochip_set_chained_irqchip (TYPE_1__*,int *,int ,int ) ;
 int handle_level_irq ;
 int npcmgpio_irq_handler ;

__attribute__((used)) static int npcm7xx_gpio_register(struct npcm7xx_pinctrl *pctrl)
{
 int ret, id;

 for (id = 0 ; id < pctrl->bank_num ; id++) {
  ret = devm_gpiochip_add_data(pctrl->dev,
          &pctrl->gpio_bank[id].gc,
          &pctrl->gpio_bank[id]);
  if (ret) {
   dev_err(pctrl->dev, "Failed to add GPIO chip %u\n", id);
   goto err_register;
  }

  ret = gpiochip_add_pin_range(&pctrl->gpio_bank[id].gc,
          dev_name(pctrl->dev),
          pctrl->gpio_bank[id].pinctrl_id,
          pctrl->gpio_bank[id].gc.base,
          pctrl->gpio_bank[id].gc.ngpio);
  if (ret < 0) {
   dev_err(pctrl->dev, "Failed to add GPIO bank %u\n", id);
   gpiochip_remove(&pctrl->gpio_bank[id].gc);
   goto err_register;
  }

  ret = gpiochip_irqchip_add(&pctrl->gpio_bank[id].gc,
        &pctrl->gpio_bank[id].irq_chip,
        0, handle_level_irq,
        IRQ_TYPE_NONE);
  if (ret < 0) {
   dev_err(pctrl->dev,
    "Failed to add IRQ chip %u\n", id);
   gpiochip_remove(&pctrl->gpio_bank[id].gc);
   goto err_register;
  }

  gpiochip_set_chained_irqchip(&pctrl->gpio_bank[id].gc,
          &pctrl->gpio_bank[id].irq_chip,
          pctrl->gpio_bank[id].irq,
          npcmgpio_irq_handler);
 }

 return 0;

err_register:
 for (; id > 0; id--)
  gpiochip_remove(&pctrl->gpio_bank[id - 1].gc);

 return ret;
}
