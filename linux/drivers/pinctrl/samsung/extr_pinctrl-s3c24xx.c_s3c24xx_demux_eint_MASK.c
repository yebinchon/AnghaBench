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
typedef  unsigned int u32 ;
struct samsung_pinctrl_drv_data {scalar_t__ virt_base; } ;
struct s3c24xx_eint_data {int /*<<< orphan*/ * domains; struct samsung_pinctrl_drv_data* drvdata; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINTMASK_REG ; 
 scalar_t__ EINTPEND_REG ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 struct irq_chip* FUNC5 (struct irq_desc*) ; 
 struct s3c24xx_eint_data* FUNC6 (struct irq_desc*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC8 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC9(struct irq_desc *desc,
				      u32 offset, u32 range)
{
	struct s3c24xx_eint_data *data = FUNC6(desc);
	struct irq_chip *chip = FUNC5(desc);
	struct samsung_pinctrl_drv_data *d = data->drvdata;
	unsigned int pend, mask;

	FUNC2(chip, desc);

	pend = FUNC8(d->virt_base + EINTPEND_REG);
	mask = FUNC8(d->virt_base + EINTMASK_REG);

	pend &= ~mask;
	pend &= range;

	while (pend) {
		unsigned int virq, irq;

		irq = FUNC1(pend);
		pend &= ~(1 << irq);
		virq = FUNC7(data->domains[irq], irq - offset);
		/* Something is really wrong if an unmapped EINT is unmasked */
		FUNC0(!virq);

		FUNC4(virq);
	}

	FUNC3(chip, desc);
}