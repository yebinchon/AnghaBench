
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regs; } ;
struct sirfsoc_gpio_chip {int lock; TYPE_1__ chip; } ;
struct sirfsoc_gpio_bank {int id; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;
 int SIRFSOC_GPIO_CTL_INTR_HIGH_MASK ;
 int SIRFSOC_GPIO_CTL_INTR_LOW_MASK ;
 int SIRFSOC_GPIO_CTL_INTR_STS_MASK ;
 int SIRFSOC_GPIO_CTL_INTR_TYPE_MASK ;
 int SIRFSOC_GPIO_CTL_OUT_EN_MASK ;
 int SIRFSOC_GPIO_CTRL (int ,int) ;
 struct sirfsoc_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int readl (int) ;
 struct sirfsoc_gpio_bank* sirfsoc_gpio_to_bank (struct sirfsoc_gpio_chip*,int ) ;
 int sirfsoc_gpio_to_bankoff (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int) ;

__attribute__((used)) static int sirfsoc_gpio_irq_type(struct irq_data *d, unsigned type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct sirfsoc_gpio_chip *sgpio = gpiochip_get_data(gc);
 struct sirfsoc_gpio_bank *bank = sirfsoc_gpio_to_bank(sgpio, d->hwirq);
 int idx = sirfsoc_gpio_to_bankoff(d->hwirq);
 u32 val, offset;
 unsigned long flags;

 offset = SIRFSOC_GPIO_CTRL(bank->id, idx);

 spin_lock_irqsave(&sgpio->lock, flags);

 val = readl(sgpio->chip.regs + offset);
 val &= ~(SIRFSOC_GPIO_CTL_INTR_STS_MASK | SIRFSOC_GPIO_CTL_OUT_EN_MASK);

 switch (type) {
 case 128:
  break;
 case 131:
  val |= SIRFSOC_GPIO_CTL_INTR_HIGH_MASK |
   SIRFSOC_GPIO_CTL_INTR_TYPE_MASK;
  val &= ~SIRFSOC_GPIO_CTL_INTR_LOW_MASK;
  break;
 case 132:
  val &= ~SIRFSOC_GPIO_CTL_INTR_HIGH_MASK;
  val |= SIRFSOC_GPIO_CTL_INTR_LOW_MASK |
   SIRFSOC_GPIO_CTL_INTR_TYPE_MASK;
  break;
 case 133:
  val |= SIRFSOC_GPIO_CTL_INTR_HIGH_MASK |
   SIRFSOC_GPIO_CTL_INTR_LOW_MASK |
   SIRFSOC_GPIO_CTL_INTR_TYPE_MASK;
  break;
 case 129:
  val &= ~(SIRFSOC_GPIO_CTL_INTR_HIGH_MASK |
   SIRFSOC_GPIO_CTL_INTR_TYPE_MASK);
  val |= SIRFSOC_GPIO_CTL_INTR_LOW_MASK;
  break;
 case 130:
  val |= SIRFSOC_GPIO_CTL_INTR_HIGH_MASK;
  val &= ~(SIRFSOC_GPIO_CTL_INTR_LOW_MASK |
   SIRFSOC_GPIO_CTL_INTR_TYPE_MASK);
  break;
 }

 writel(val, sgpio->chip.regs + offset);

 spin_unlock_irqrestore(&sgpio->lock, flags);

 return 0;
}
