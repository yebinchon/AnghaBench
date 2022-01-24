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
struct samsung_pinctrl_drv_data {scalar_t__ virt_base; } ;
struct s3c64xx_eint_gpio_data {int /*<<< orphan*/ * domains; struct samsung_pinctrl_drv_data* drvdata; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SERVICE_REG ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int SVC_NUM_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 struct irq_chip* FUNC5 (struct irq_desc*) ; 
 struct s3c64xx_eint_gpio_data* FUNC6 (struct irq_desc*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC5(desc);
	struct s3c64xx_eint_gpio_data *data = FUNC6(desc);
	struct samsung_pinctrl_drv_data *drvdata = data->drvdata;

	FUNC2(chip, desc);

	do {
		unsigned int svc;
		unsigned int group;
		unsigned int pin;
		unsigned int virq;

		svc = FUNC8(drvdata->virt_base + SERVICE_REG);
		group = FUNC1(svc);
		pin = svc & SVC_NUM_MASK;

		if (!group)
			break;

		/* Group 1 is used for two pin banks */
		if (group == 1) {
			if (pin < 8)
				group = 0;
			else
				pin -= 8;
		}

		virq = FUNC7(data->domains[group], pin);
		/*
		 * Something must be really wrong if an unmapped EINT
		 * was unmasked...
		 */
		FUNC0(!virq);

		FUNC4(virq);
	} while (1);

	FUNC3(chip, desc);
}