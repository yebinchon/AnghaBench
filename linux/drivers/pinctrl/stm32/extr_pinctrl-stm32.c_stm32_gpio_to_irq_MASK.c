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
struct stm32_gpio_bank {int /*<<< orphan*/  fwnode; } ;
struct irq_fwspec {int param_count; unsigned int* param; int /*<<< orphan*/  fwnode; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int IRQ_TYPE_NONE ; 
 struct stm32_gpio_bank* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (struct irq_fwspec*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned int offset)
{
	struct stm32_gpio_bank *bank = FUNC0(chip);
	struct irq_fwspec fwspec;

	fwspec.fwnode = bank->fwnode;
	fwspec.param_count = 2;
	fwspec.param[0] = offset;
	fwspec.param[1] = IRQ_TYPE_NONE;

	return FUNC1(&fwspec);
}