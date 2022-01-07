
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; int mask; } ;
struct gpio_chip {int dummy; } ;
struct armada_37xx_pinctrl {int base; int irq_lock; int regmap; } ;


 int BIT (int) ;
 int EINVAL ;
 int GPIO_PER_REG ;
 int INPUT_VAL ;
 int IRQ_POL ;



 int armada_37xx_irq_update_reg (int*,struct irq_data*) ;
 struct armada_37xx_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int readl (int) ;
 int regmap_read (int ,int,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int) ;

__attribute__((used)) static int armada_37xx_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(d);
 struct armada_37xx_pinctrl *info = gpiochip_get_data(chip);
 u32 val, reg = IRQ_POL;
 unsigned long flags;

 spin_lock_irqsave(&info->irq_lock, flags);
 armada_37xx_irq_update_reg(&reg, d);
 val = readl(info->base + reg);
 switch (type) {
 case 128:
  val &= ~(BIT(d->hwirq % GPIO_PER_REG));
  break;
 case 129:
  val |= (BIT(d->hwirq % GPIO_PER_REG));
  break;
 case 130: {
  u32 in_val, in_reg = INPUT_VAL;

  armada_37xx_irq_update_reg(&in_reg, d);
  regmap_read(info->regmap, in_reg, &in_val);


  if (in_val & d->mask)
   val |= d->mask;
  else
   val &= ~d->mask;
  break;
 }
 default:
  spin_unlock_irqrestore(&info->irq_lock, flags);
  return -EINVAL;
 }
 writel(val, info->base + reg);
 spin_unlock_irqrestore(&info->irq_lock, flags);

 return 0;
}
