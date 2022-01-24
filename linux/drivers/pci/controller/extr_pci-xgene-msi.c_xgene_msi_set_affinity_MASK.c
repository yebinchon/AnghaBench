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
struct irq_data {scalar_t__ hwirq; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int IRQ_SET_MASK_OK ; 
 int IRQ_SET_MASK_OK_DONE ; 
 int FUNC0 (struct cpumask const*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct irq_data *irqdata,
				  const struct cpumask *mask, bool force)
{
	int target_cpu = FUNC0(mask);
	int curr_cpu;

	curr_cpu = FUNC2(irqdata->hwirq);
	if (curr_cpu == target_cpu)
		return IRQ_SET_MASK_OK_DONE;

	/* Update MSI number to target the new CPU */
	irqdata->hwirq = FUNC1(irqdata->hwirq) + target_cpu;

	return IRQ_SET_MASK_OK;
}