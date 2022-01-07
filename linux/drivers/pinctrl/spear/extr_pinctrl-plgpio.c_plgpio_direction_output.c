
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dir; int wdata; } ;
struct plgpio {unsigned int (* p2o ) (unsigned int) ;int p2o_regs; int lock; TYPE_1__ regs; int base; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int PTO_DIR_REG ;
 int PTO_WDATA_REG ;
 struct plgpio* gpiochip_get_data (struct gpio_chip*) ;
 int plgpio_reg_reset (int ,unsigned int,int ) ;
 int plgpio_reg_set (int ,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int stub1 (unsigned int) ;

__attribute__((used)) static int plgpio_direction_output(struct gpio_chip *chip, unsigned offset,
  int value)
{
 struct plgpio *plgpio = gpiochip_get_data(chip);
 unsigned long flags;
 unsigned dir_offset = offset, wdata_offset = offset, tmp;


 if (plgpio->p2o && (plgpio->p2o_regs & (PTO_DIR_REG | PTO_WDATA_REG))) {
  tmp = plgpio->p2o(offset);
  if (tmp == -1)
   return -EINVAL;

  if (plgpio->p2o_regs & PTO_DIR_REG)
   dir_offset = tmp;
  if (plgpio->p2o_regs & PTO_WDATA_REG)
   wdata_offset = tmp;
 }

 spin_lock_irqsave(&plgpio->lock, flags);
 if (value)
  plgpio_reg_set(plgpio->base, wdata_offset,
    plgpio->regs.wdata);
 else
  plgpio_reg_reset(plgpio->base, wdata_offset,
    plgpio->regs.wdata);

 plgpio_reg_reset(plgpio->base, dir_offset, plgpio->regs.dir);
 spin_unlock_irqrestore(&plgpio->lock, flags);

 return 0;
}
