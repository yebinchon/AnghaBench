#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct samsung_pin_bank_type {unsigned long* reg_offset; unsigned int* fld_width; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct samsung_pin_bank {unsigned long pctl_offset; int /*<<< orphan*/  slock; scalar_t__ pctl_base; int /*<<< orphan*/  name; TYPE_1__ gpio_chip; struct samsung_pin_bank_type* type; } ;
struct irq_data {unsigned int hwirq; } ;

/* Variables and functions */
 unsigned int EXYNOS_PIN_FUNC_EINT ; 
 size_t PINCFG_TYPE_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (TYPE_1__*,unsigned int) ; 
 struct samsung_pin_bank* FUNC2 (struct irq_data*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct irq_data *irqd)
{
	struct samsung_pin_bank *bank = FUNC2(irqd);
	const struct samsung_pin_bank_type *bank_type = bank->type;
	unsigned long reg_con, flags;
	unsigned int shift, mask, con;
	int ret;

	ret = FUNC1(&bank->gpio_chip, irqd->hwirq);
	if (ret) {
		FUNC0(bank->gpio_chip.parent,
			"unable to lock pin %s-%lu IRQ\n",
			bank->name, irqd->hwirq);
		return ret;
	}

	reg_con = bank->pctl_offset + bank_type->reg_offset[PINCFG_TYPE_FUNC];
	shift = irqd->hwirq * bank_type->fld_width[PINCFG_TYPE_FUNC];
	mask = (1 << bank_type->fld_width[PINCFG_TYPE_FUNC]) - 1;

	FUNC4(&bank->slock, flags);

	con = FUNC3(bank->pctl_base + reg_con);
	con &= ~(mask << shift);
	con |= EXYNOS_PIN_FUNC_EINT << shift;
	FUNC6(con, bank->pctl_base + reg_con);

	FUNC5(&bank->slock, flags);

	return 0;
}