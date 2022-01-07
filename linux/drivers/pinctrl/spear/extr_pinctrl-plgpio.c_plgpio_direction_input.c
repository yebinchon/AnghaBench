
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dir; } ;
struct plgpio {unsigned int (* p2o ) (unsigned int) ;int p2o_regs; int lock; TYPE_1__ regs; int base; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int PTO_DIR_REG ;
 struct plgpio* gpiochip_get_data (struct gpio_chip*) ;
 int plgpio_reg_set (int ,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int stub1 (unsigned int) ;

__attribute__((used)) static int plgpio_direction_input(struct gpio_chip *chip, unsigned offset)
{
 struct plgpio *plgpio = gpiochip_get_data(chip);
 unsigned long flags;


 if (plgpio->p2o && (plgpio->p2o_regs & PTO_DIR_REG)) {
  offset = plgpio->p2o(offset);
  if (offset == -1)
   return -EINVAL;
 }

 spin_lock_irqsave(&plgpio->lock, flags);
 plgpio_reg_set(plgpio->base, offset, plgpio->regs.dir);
 spin_unlock_irqrestore(&plgpio->lock, flags);

 return 0;
}
