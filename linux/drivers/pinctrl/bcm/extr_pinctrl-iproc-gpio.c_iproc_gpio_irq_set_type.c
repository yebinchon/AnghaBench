
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int hwirq; } ;
struct iproc_gpio {int dev; int lock; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int IPROC_GPIO_INT_DE_OFFSET ;
 int IPROC_GPIO_INT_EDGE_OFFSET ;
 int IPROC_GPIO_INT_TYPE_OFFSET ;





 unsigned int IRQ_TYPE_SENSE_MASK ;
 int dev_dbg (int ,char*,unsigned int,int,int,int) ;
 int dev_err (int ,char*,unsigned int) ;
 struct iproc_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int iproc_set_bit (struct iproc_gpio*,int ,unsigned int,int) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int iproc_gpio_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct iproc_gpio *chip = gpiochip_get_data(gc);
 unsigned gpio = d->hwirq;
 bool level_triggered = 0;
 bool dual_edge = 0;
 bool rising_or_high = 0;
 unsigned long flags;

 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 130:
  rising_or_high = 1;
  break;

 case 131:
  break;

 case 132:
  dual_edge = 1;
  break;

 case 129:
  level_triggered = 1;
  rising_or_high = 1;
  break;

 case 128:
  level_triggered = 1;
  break;

 default:
  dev_err(chip->dev, "invalid GPIO IRQ type 0x%x\n",
   type);
  return -EINVAL;
 }

 raw_spin_lock_irqsave(&chip->lock, flags);
 iproc_set_bit(chip, IPROC_GPIO_INT_TYPE_OFFSET, gpio,
         level_triggered);
 iproc_set_bit(chip, IPROC_GPIO_INT_DE_OFFSET, gpio, dual_edge);
 iproc_set_bit(chip, IPROC_GPIO_INT_EDGE_OFFSET, gpio,
         rising_or_high);
 raw_spin_unlock_irqrestore(&chip->lock, flags);

 dev_dbg(chip->dev,
  "gpio:%u level_triggered:%d dual_edge:%d rising_or_high:%d\n",
  gpio, level_triggered, dual_edge, rising_or_high);

 return 0;
}
