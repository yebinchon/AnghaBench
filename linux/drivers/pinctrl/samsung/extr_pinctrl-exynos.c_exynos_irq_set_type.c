
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pin_bank {unsigned long eint_offset; scalar_t__ eint_base; } ;
struct irq_data {unsigned int hwirq; } ;
struct irq_chip {int dummy; } ;
struct exynos_irq_chip {unsigned long eint_con; } ;


 int EINVAL ;
 unsigned int EXYNOS_EINT_CON_LEN ;
 unsigned int EXYNOS_EINT_CON_MASK ;
 unsigned int EXYNOS_EINT_EDGE_BOTH ;
 unsigned int EXYNOS_EINT_EDGE_FALLING ;
 unsigned int EXYNOS_EINT_EDGE_RISING ;
 unsigned int EXYNOS_EINT_LEVEL_HIGH ;
 unsigned int EXYNOS_EINT_LEVEL_LOW ;





 int handle_edge_irq ;
 int handle_level_irq ;
 struct irq_chip* irq_data_get_irq_chip (struct irq_data*) ;
 struct samsung_pin_bank* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int pr_err (char*) ;
 unsigned int readl (scalar_t__) ;
 struct exynos_irq_chip* to_exynos_irq_chip (struct irq_chip*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int exynos_irq_set_type(struct irq_data *irqd, unsigned int type)
{
 struct irq_chip *chip = irq_data_get_irq_chip(irqd);
 struct exynos_irq_chip *our_chip = to_exynos_irq_chip(chip);
 struct samsung_pin_bank *bank = irq_data_get_irq_chip_data(irqd);
 unsigned int shift = EXYNOS_EINT_CON_LEN * irqd->hwirq;
 unsigned int con, trig_type;
 unsigned long reg_con = our_chip->eint_con + bank->eint_offset;

 switch (type) {
 case 130:
  trig_type = EXYNOS_EINT_EDGE_RISING;
  break;
 case 131:
  trig_type = EXYNOS_EINT_EDGE_FALLING;
  break;
 case 132:
  trig_type = EXYNOS_EINT_EDGE_BOTH;
  break;
 case 129:
  trig_type = EXYNOS_EINT_LEVEL_HIGH;
  break;
 case 128:
  trig_type = EXYNOS_EINT_LEVEL_LOW;
  break;
 default:
  pr_err("unsupported external interrupt type\n");
  return -EINVAL;
 }

 if (type & 132)
  irq_set_handler_locked(irqd, handle_edge_irq);
 else
  irq_set_handler_locked(irqd, handle_level_irq);

 con = readl(bank->eint_base + reg_con);
 con &= ~(EXYNOS_EINT_CON_MASK << shift);
 con |= trig_type << shift;
 writel(con, bank->eint_base + reg_con);

 return 0;
}
