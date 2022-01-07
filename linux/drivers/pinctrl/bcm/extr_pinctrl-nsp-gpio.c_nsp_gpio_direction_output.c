
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsp_gpio {int dev; int lock; } ;
struct gpio_chip {int dummy; } ;


 int NSP_GPIO_DATA_OUT ;
 int NSP_GPIO_OUT_EN ;
 int REG ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 struct nsp_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int nsp_set_bit (struct nsp_gpio*,int ,int ,unsigned int,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nsp_gpio_direction_output(struct gpio_chip *gc, unsigned gpio,
         int val)
{
 struct nsp_gpio *chip = gpiochip_get_data(gc);
 unsigned long flags;

 raw_spin_lock_irqsave(&chip->lock, flags);
 nsp_set_bit(chip, REG, NSP_GPIO_OUT_EN, gpio, 1);
 nsp_set_bit(chip, REG, NSP_GPIO_DATA_OUT, gpio, !!(val));
 raw_spin_unlock_irqrestore(&chip->lock, flags);

 dev_dbg(chip->dev, "gpio:%u set output, value:%d\n", gpio, val);
 return 0;
}
