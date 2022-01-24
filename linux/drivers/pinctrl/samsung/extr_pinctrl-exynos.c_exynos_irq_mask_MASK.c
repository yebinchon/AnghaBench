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
struct samsung_pin_bank {unsigned long eint_offset; int /*<<< orphan*/  slock; scalar_t__ eint_base; } ;
struct irq_data {int hwirq; } ;
struct irq_chip {int dummy; } ;
struct exynos_irq_chip {unsigned long eint_mask; } ;

/* Variables and functions */
 struct irq_chip* FUNC0 (struct irq_data*) ; 
 struct samsung_pin_bank* FUNC1 (struct irq_data*) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct exynos_irq_chip* FUNC5 (struct irq_chip*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct irq_data *irqd)
{
	struct irq_chip *chip = FUNC0(irqd);
	struct exynos_irq_chip *our_chip = FUNC5(chip);
	struct samsung_pin_bank *bank = FUNC1(irqd);
	unsigned long reg_mask = our_chip->eint_mask + bank->eint_offset;
	unsigned long mask;
	unsigned long flags;

	FUNC3(&bank->slock, flags);

	mask = FUNC2(bank->eint_base + reg_mask);
	mask |= 1 << irqd->hwirq;
	FUNC6(mask, bank->eint_base + reg_mask);

	FUNC4(&bank->slock, flags);
}