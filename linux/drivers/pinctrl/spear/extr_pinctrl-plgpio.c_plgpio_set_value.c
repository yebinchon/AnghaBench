
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wdata; } ;
struct plgpio {unsigned int (* p2o ) (unsigned int) ;int p2o_regs; TYPE_1__ regs; int base; } ;
struct gpio_chip {unsigned int ngpio; } ;


 int PTO_WDATA_REG ;
 struct plgpio* gpiochip_get_data (struct gpio_chip*) ;
 int plgpio_reg_reset (int ,unsigned int,int ) ;
 int plgpio_reg_set (int ,unsigned int,int ) ;
 unsigned int stub1 (unsigned int) ;

__attribute__((used)) static void plgpio_set_value(struct gpio_chip *chip, unsigned offset, int value)
{
 struct plgpio *plgpio = gpiochip_get_data(chip);

 if (offset >= chip->ngpio)
  return;


 if (plgpio->p2o && (plgpio->p2o_regs & PTO_WDATA_REG)) {
  offset = plgpio->p2o(offset);
  if (offset == -1)
   return;
 }

 if (value)
  plgpio_reg_set(plgpio->base, offset, plgpio->regs.wdata);
 else
  plgpio_reg_reset(plgpio->base, offset, plgpio->regs.wdata);
}
