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
struct samsung_pin_bank {int /*<<< orphan*/  irq_domain; scalar_t__ eint_offset; TYPE_1__* irq_chip; scalar_t__ eint_base; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct exynos_muxed_weint_data {int nr_banks; struct samsung_pin_bank** banks; } ;
struct TYPE_2__ {scalar_t__ eint_mask; scalar_t__ eint_pend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC3 (struct irq_desc*) ; 
 struct exynos_muxed_weint_data* FUNC4 (struct irq_desc*) ; 
 unsigned long FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC3(desc);
	struct exynos_muxed_weint_data *eintd = FUNC4(desc);
	unsigned long pend;
	unsigned long mask;
	int i;

	FUNC0(chip, desc);

	for (i = 0; i < eintd->nr_banks; ++i) {
		struct samsung_pin_bank *b = eintd->banks[i];
		pend = FUNC5(b->eint_base + b->irq_chip->eint_pend
				+ b->eint_offset);
		mask = FUNC5(b->eint_base + b->irq_chip->eint_mask
				+ b->eint_offset);
		FUNC2(pend & ~mask, b->irq_domain);
	}

	FUNC1(chip, desc);
}