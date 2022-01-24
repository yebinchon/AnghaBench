#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct samsung_pin_bank {int eint_offset; } ;
struct irq_data {int hwirq; int /*<<< orphan*/  irq; } ;
struct irq_chip {int dummy; } ;
struct exynos_irq_chip {unsigned long eint_wake_mask_value; } ;

/* Variables and functions */
 struct irq_chip* FUNC0 (struct irq_data*) ; 
 struct samsung_pin_bank* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 struct exynos_irq_chip* FUNC3 (struct irq_chip*) ; 

__attribute__((used)) static int FUNC4(struct irq_data *irqd, unsigned int on)
{
	struct irq_chip *chip = FUNC0(irqd);
	struct exynos_irq_chip *our_chip = FUNC3(chip);
	struct samsung_pin_bank *bank = FUNC1(irqd);
	unsigned long bit = 1UL << (2 * bank->eint_offset + irqd->hwirq);

	FUNC2("wake %s for irq %d\n", on ? "enabled" : "disabled", irqd->irq);

	if (!on)
		our_chip->eint_wake_mask_value |= bit;
	else
		our_chip->eint_wake_mask_value &= ~bit;

	return 0;
}