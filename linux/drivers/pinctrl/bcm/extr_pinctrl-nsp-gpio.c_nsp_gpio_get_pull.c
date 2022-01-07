
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsp_gpio {int lock; } ;


 int IO_CTRL ;
 int NSP_PULL_DOWN_EN ;
 int NSP_PULL_UP_EN ;
 int nsp_get_bit (struct nsp_gpio*,int ,int ,unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nsp_gpio_get_pull(struct nsp_gpio *chip, unsigned gpio,
         bool *pull_up, bool *pull_down)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&chip->lock, flags);
 *pull_up = nsp_get_bit(chip, IO_CTRL, NSP_PULL_UP_EN, gpio);
 *pull_down = nsp_get_bit(chip, IO_CTRL, NSP_PULL_DOWN_EN, gpio);
 raw_spin_unlock_irqrestore(&chip->lock, flags);
}
