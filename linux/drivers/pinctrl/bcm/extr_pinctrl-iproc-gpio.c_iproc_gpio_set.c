
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_gpio {int dev; int lock; } ;
struct gpio_chip {int dummy; } ;


 int IPROC_GPIO_DATA_OUT_OFFSET ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 struct iproc_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int iproc_set_bit (struct iproc_gpio*,int ,unsigned int,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iproc_gpio_set(struct gpio_chip *gc, unsigned gpio, int val)
{
 struct iproc_gpio *chip = gpiochip_get_data(gc);
 unsigned long flags;

 raw_spin_lock_irqsave(&chip->lock, flags);
 iproc_set_bit(chip, IPROC_GPIO_DATA_OUT_OFFSET, gpio, !!(val));
 raw_spin_unlock_irqrestore(&chip->lock, flags);

 dev_dbg(chip->dev, "gpio:%u set, value:%d\n", gpio, val);
}
