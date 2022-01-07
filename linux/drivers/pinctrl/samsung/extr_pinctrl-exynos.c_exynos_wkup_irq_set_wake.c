
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pin_bank {int eint_offset; } ;
struct irq_data {int hwirq; int irq; } ;
struct irq_chip {int dummy; } ;
struct exynos_irq_chip {unsigned long eint_wake_mask_value; } ;


 struct irq_chip* irq_data_get_irq_chip (struct irq_data*) ;
 struct samsung_pin_bank* irq_data_get_irq_chip_data (struct irq_data*) ;
 int pr_info (char*,char*,int ) ;
 struct exynos_irq_chip* to_exynos_irq_chip (struct irq_chip*) ;

__attribute__((used)) static int exynos_wkup_irq_set_wake(struct irq_data *irqd, unsigned int on)
{
 struct irq_chip *chip = irq_data_get_irq_chip(irqd);
 struct exynos_irq_chip *our_chip = to_exynos_irq_chip(chip);
 struct samsung_pin_bank *bank = irq_data_get_irq_chip_data(irqd);
 unsigned long bit = 1UL << (2 * bank->eint_offset + irqd->hwirq);

 pr_info("wake %s for irq %d\n", on ? "enabled" : "disabled", irqd->irq);

 if (!on)
  our_chip->eint_wake_mask_value |= bit;
 else
  our_chip->eint_wake_mask_value &= ~bit;

 return 0;
}
