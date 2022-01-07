
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enb; } ;
struct plgpio {unsigned int (* p2o ) (unsigned int) ;int p2o_regs; int clk; int lock; TYPE_1__ regs; int base; } ;
struct gpio_chip {unsigned int ngpio; int base; } ;


 int EINVAL ;
 int IS_ERR (int ) ;
 int PTO_ENB_REG ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct plgpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinctrl_gpio_free (int) ;
 int pinctrl_gpio_request (int) ;
 int plgpio_direction_input (struct gpio_chip*,unsigned int) ;
 int plgpio_reg_set (int ,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int stub1 (unsigned int) ;

__attribute__((used)) static int plgpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct plgpio *plgpio = gpiochip_get_data(chip);
 int gpio = chip->base + offset;
 unsigned long flags;
 int ret = 0;

 if (offset >= chip->ngpio)
  return -EINVAL;

 ret = pinctrl_gpio_request(gpio);
 if (ret)
  return ret;

 if (!IS_ERR(plgpio->clk)) {
  ret = clk_enable(plgpio->clk);
  if (ret)
   goto err0;
 }

 if (plgpio->regs.enb == -1)
  return 0;




 ret = plgpio_direction_input(chip, offset);
 if (ret)
  goto err1;


 if (plgpio->p2o && (plgpio->p2o_regs & PTO_ENB_REG)) {
  offset = plgpio->p2o(offset);
  if (offset == -1) {
   ret = -EINVAL;
   goto err1;
  }
 }

 spin_lock_irqsave(&plgpio->lock, flags);
 plgpio_reg_set(plgpio->base, offset, plgpio->regs.enb);
 spin_unlock_irqrestore(&plgpio->lock, flags);
 return 0;

err1:
 if (!IS_ERR(plgpio->clk))
  clk_disable(plgpio->clk);
err0:
 pinctrl_gpio_free(gpio);
 return ret;
}
