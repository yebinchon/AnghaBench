
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsp_gpio {int dev; int lock; } ;


 int IO_CTRL ;
 int NSP_PULL_DOWN_EN ;
 int NSP_PULL_UP_EN ;
 int dev_dbg (int ,char*,unsigned int,int,int) ;
 int nsp_set_bit (struct nsp_gpio*,int ,int ,unsigned int,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nsp_gpio_set_pull(struct nsp_gpio *chip, unsigned gpio,
        bool pull_up, bool pull_down)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&chip->lock, flags);
 nsp_set_bit(chip, IO_CTRL, NSP_PULL_DOWN_EN, gpio, pull_down);
 nsp_set_bit(chip, IO_CTRL, NSP_PULL_UP_EN, gpio, pull_up);
 raw_spin_unlock_irqrestore(&chip->lock, flags);

 dev_dbg(chip->dev, "gpio:%u set pullup:%d pulldown: %d\n",
  gpio, pull_up, pull_down);
 return 0;
}
