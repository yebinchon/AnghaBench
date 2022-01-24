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
struct s3c64xx_eint0_data {int /*<<< orphan*/ * pins; int /*<<< orphan*/ * domains; struct samsung_pinctrl_drv_data* drvdata; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINT0MASK_REG ; 
 scalar_t__ EINT0PEND_REG ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 struct irq_chip* FUNC5 (struct irq_desc*) ; 
 struct s3c64xx_eint0_data* FUNC6 (struct irq_desc*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC9(struct irq_desc *desc, u32 range)
{
	struct irq_chip *chip = FUNC5(desc);
	struct s3c64xx_eint0_data *data = FUNC6(desc);
	struct samsung_pinctrl_drv_data *drvdata = data->drvdata;
	unsigned int pend, mask;

	FUNC1(chip, desc);

	pend = FUNC8(drvdata->virt_base + EINT0PEND_REG);
	mask = FUNC8(drvdata->virt_base + EINT0MASK_REG);

	pend = pend & range & ~mask;
	pend &= range;

	while (pend) {
		unsigned int virq, irq;

		irq = FUNC3(pend) - 1;
		pend &= ~(1 << irq);
		virq = FUNC7(data->domains[irq], data->pins[irq]);
		/*
		 * Something must be really wrong if an unmapped EINT
		 * was unmasked...
		 */
		FUNC0(!virq);

		FUNC4(virq);
	}

	FUNC2(chip, desc);
}