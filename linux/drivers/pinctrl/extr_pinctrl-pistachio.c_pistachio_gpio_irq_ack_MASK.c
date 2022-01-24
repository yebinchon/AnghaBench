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
struct pistachio_gpio_bank {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct pistachio_gpio_bank*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pistachio_gpio_bank* FUNC1 (struct irq_data*) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	struct pistachio_gpio_bank *bank = FUNC1(data);

	FUNC0(bank, GPIO_INTERRUPT_STATUS, data->hwirq, 0);
}