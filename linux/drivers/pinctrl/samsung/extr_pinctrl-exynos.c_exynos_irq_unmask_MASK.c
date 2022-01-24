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
 int IRQ_TYPE_LEVEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct irq_data*) ; 
 struct irq_chip* FUNC1 (struct irq_data*) ; 
 struct samsung_pin_bank* FUNC2 (struct irq_data*) ; 
 int FUNC3 (struct irq_data*) ; 
 unsigned long FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct exynos_irq_chip* FUNC7 (struct irq_chip*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct irq_data *irqd)
{
	struct irq_chip *chip = FUNC1(irqd);
	struct exynos_irq_chip *our_chip = FUNC7(chip);
	struct samsung_pin_bank *bank = FUNC2(irqd);
	unsigned long reg_mask = our_chip->eint_mask + bank->eint_offset;
	unsigned long mask;
	unsigned long flags;

	/*
	 * Ack level interrupts right before unmask
	 *
	 * If we don't do this we'll get a double-interrupt.  Level triggered
	 * interrupts must not fire an interrupt if the level is not
	 * _currently_ active, even if it was active while the interrupt was
	 * masked.
	 */
	if (FUNC3(irqd) & IRQ_TYPE_LEVEL_MASK)
		FUNC0(irqd);

	FUNC5(&bank->slock, flags);

	mask = FUNC4(bank->eint_base + reg_mask);
	mask &= ~(1 << irqd->hwirq);
	FUNC8(mask, bank->eint_base + reg_mask);

	FUNC6(&bank->slock, flags);
}