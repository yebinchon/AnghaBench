
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct nsp_gpio {int lock; scalar_t__ io_ctrl; } ;


 unsigned int BIT (unsigned int) ;
 int GPIO_DRV_STRENGTH_BITS ;
 unsigned int NSP_GPIO_DRV_CTRL ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int nsp_gpio_get_strength(struct nsp_gpio *chip, unsigned gpio,
     u16 *strength)
{
 unsigned int offset, shift;
 u32 val;
 unsigned long flags;
 int i;

 offset = NSP_GPIO_DRV_CTRL;
 shift = gpio;

 raw_spin_lock_irqsave(&chip->lock, flags);
 *strength = 0;
 for (i = (GPIO_DRV_STRENGTH_BITS - 1); i >= 0; i--) {
  val = readl(chip->io_ctrl + offset) & BIT(shift);
  val >>= shift;
  *strength += (val << i);
  offset += 4;
 }


 *strength = (*strength + 1) * 2;
 raw_spin_unlock_irqrestore(&chip->lock, flags);

 return 0;
}
