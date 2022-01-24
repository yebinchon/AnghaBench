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
struct samsung_pin_bank {int eint_mask; } ;
struct irq_domain {struct samsung_pin_bank* host_data; } ;
typedef  int irq_hw_number_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct samsung_pin_bank*) ; 
 int /*<<< orphan*/  s3c64xx_gpio_irq_chip ; 

__attribute__((used)) static int FUNC2(struct irq_domain *h, unsigned int virq,
					irq_hw_number_t hw)
{
	struct samsung_pin_bank *bank = h->host_data;

	if (!(bank->eint_mask & (1 << hw)))
		return -EINVAL;

	FUNC0(virq,
				&s3c64xx_gpio_irq_chip, handle_level_irq);
	FUNC1(virq, bank);

	return 0;
}