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

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int** evtchn_to_irq ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 () ; 

__attribute__((used)) static int FUNC5(unsigned evtchn, unsigned irq)
{
	unsigned row;
	unsigned col;

	if (evtchn >= FUNC4())
		return -EINVAL;

	row = FUNC1(evtchn);
	col = FUNC0(evtchn);

	if (evtchn_to_irq[row] == NULL) {
		/* Unallocated irq entries return -1 anyway */
		if (irq == -1)
			return 0;

		evtchn_to_irq[row] = (int *)FUNC3(GFP_KERNEL);
		if (evtchn_to_irq[row] == NULL)
			return -ENOMEM;

		FUNC2(row);
	}

	evtchn_to_irq[row][col] = irq;
	return 0;
}