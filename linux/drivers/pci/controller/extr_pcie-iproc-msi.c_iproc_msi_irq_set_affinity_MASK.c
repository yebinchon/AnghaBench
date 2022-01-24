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
struct iproc_msi {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int IRQ_SET_MASK_OK ; 
 int IRQ_SET_MASK_OK_DONE ; 
 int FUNC0 (struct cpumask const*) ; 
 scalar_t__ FUNC1 (struct iproc_msi*,scalar_t__) ; 
 int FUNC2 (struct iproc_msi*,scalar_t__) ; 
 struct iproc_msi* FUNC3 (struct irq_data*) ; 

__attribute__((used)) static int FUNC4(struct irq_data *data,
				      const struct cpumask *mask, bool force)
{
	struct iproc_msi *msi = FUNC3(data);
	int target_cpu = FUNC0(mask);
	int curr_cpu;

	curr_cpu = FUNC2(msi, data->hwirq);
	if (curr_cpu == target_cpu)
		return IRQ_SET_MASK_OK_DONE;

	/* steer MSI to the target CPU */
	data->hwirq = FUNC1(msi, data->hwirq) + target_cpu;

	return IRQ_SET_MASK_OK;
}