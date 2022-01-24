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
typedef  int /*<<< orphan*/  u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_TYPE_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC2(struct irq_domain *d, struct device_node *ctrlr,
			  const u32 *intspec, unsigned int intsize,
			  unsigned long *out_hwirq, unsigned int *out_type)
{
	if (FUNC0(intsize < 1))
		return -EINVAL;

	*out_hwirq = FUNC1(intspec[0]);
	*out_type = IRQ_TYPE_NONE;

	return 0;
}