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
struct irq_data {int dummy; } ;
struct intc_handle_int {int /*<<< orphan*/  handle; } ;
struct intc_desc_int {int /*<<< orphan*/  nr_prio; int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ REG_FN_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int /*<<< orphan*/ ) ; 
 struct intc_desc_int* FUNC3 (unsigned int) ; 
 struct intc_handle_int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int) ; 
 struct irq_data* FUNC7 (unsigned int) ; 

int FUNC8(unsigned int irq, unsigned int prio)
{
	struct intc_desc_int *d = FUNC3(irq);
	struct irq_data *data = FUNC7(irq);
	struct intc_handle_int *ihp;

	if (!FUNC5(irq) || prio <= 1)
		return -EINVAL;

	ihp = FUNC4(d->prio, d->nr_prio, irq);
	if (ihp) {
		if (prio >= (1 << FUNC1(ihp->handle)))
			return -EINVAL;

		FUNC6(irq, prio);

		/*
		 * only set secondary masking method directly
		 * primary masking method is using intc_prio_level[irq]
		 * priority level will be set during next enable()
		 */
		if (FUNC0(ihp->handle) != REG_FN_ERR)
			FUNC2(data, ihp->handle);
	}
	return 0;
}