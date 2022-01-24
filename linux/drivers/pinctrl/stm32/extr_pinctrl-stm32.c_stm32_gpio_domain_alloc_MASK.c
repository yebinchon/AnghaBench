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
struct stm32_gpio_bank {int dummy; } ;
struct irq_fwspec {int param_count; int /*<<< orphan*/ * param; int /*<<< orphan*/  fwnode; } ;
struct irq_domain {TYPE_1__* parent; struct stm32_gpio_bank* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_2__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int FUNC0 (struct irq_domain*,unsigned int,unsigned int,struct irq_fwspec*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct stm32_gpio_bank*) ; 
 int /*<<< orphan*/  stm32_gpio_irq_chip ; 

__attribute__((used)) static int FUNC2(struct irq_domain *d,
				   unsigned int virq,
				   unsigned int nr_irqs, void *data)
{
	struct stm32_gpio_bank *bank = d->host_data;
	struct irq_fwspec *fwspec = data;
	struct irq_fwspec parent_fwspec;
	irq_hw_number_t hwirq;

	hwirq = fwspec->param[0];
	parent_fwspec.fwnode = d->parent->fwnode;
	parent_fwspec.param_count = 2;
	parent_fwspec.param[0] = fwspec->param[0];
	parent_fwspec.param[1] = fwspec->param[1];

	FUNC1(d, virq, hwirq, &stm32_gpio_irq_chip,
				      bank);

	return FUNC0(d, virq, nr_irqs, &parent_fwspec);
}