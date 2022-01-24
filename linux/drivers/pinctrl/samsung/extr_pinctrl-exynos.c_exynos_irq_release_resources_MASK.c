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
struct samsung_pin_bank_type {unsigned long* reg_offset; unsigned int* fld_width; } ;
struct samsung_pin_bank {unsigned long pctl_offset; int /*<<< orphan*/  gpio_chip; int /*<<< orphan*/  slock; scalar_t__ pctl_base; struct samsung_pin_bank_type* type; } ;
struct irq_data {unsigned int hwirq; } ;

/* Variables and functions */
 unsigned int EXYNOS_PIN_FUNC_INPUT ; 
 size_t PINCFG_TYPE_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 struct samsung_pin_bank* FUNC1 (struct irq_data*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_data *irqd)
{
	struct samsung_pin_bank *bank = FUNC1(irqd);
	const struct samsung_pin_bank_type *bank_type = bank->type;
	unsigned long reg_con, flags;
	unsigned int shift, mask, con;

	reg_con = bank->pctl_offset + bank_type->reg_offset[PINCFG_TYPE_FUNC];
	shift = irqd->hwirq * bank_type->fld_width[PINCFG_TYPE_FUNC];
	mask = (1 << bank_type->fld_width[PINCFG_TYPE_FUNC]) - 1;

	FUNC3(&bank->slock, flags);

	con = FUNC2(bank->pctl_base + reg_con);
	con &= ~(mask << shift);
	con |= EXYNOS_PIN_FUNC_INPUT << shift;
	FUNC5(con, bank->pctl_base + reg_con);

	FUNC4(&bank->slock, flags);

	FUNC0(&bank->gpio_chip, irqd->hwirq);
}