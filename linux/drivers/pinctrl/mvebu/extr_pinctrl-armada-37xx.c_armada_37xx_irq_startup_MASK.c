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
struct irq_data {int hwirq; int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GPIO_PER_REG ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 

__attribute__((used)) static unsigned int FUNC2(struct irq_data *d)
{
	/*
	 * The mask field is a "precomputed bitmask for accessing the
	 * chip registers" which was introduced for the generic
	 * irqchip framework. As we don't use this framework, we can
	 * reuse this field for our own usage.
	 */
	d->mask = FUNC0(d->hwirq % GPIO_PER_REG);

	FUNC1(d);

	return 0;
}