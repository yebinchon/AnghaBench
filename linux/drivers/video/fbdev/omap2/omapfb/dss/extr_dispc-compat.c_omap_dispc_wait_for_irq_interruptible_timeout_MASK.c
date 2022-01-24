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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long ERESTARTSYS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  dispc_irq_wait_handler ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(u32 irqmask,
		unsigned long timeout)
{

	int r;
	long time_left;
	FUNC0(completion);

	r = FUNC1(dispc_irq_wait_handler, &completion,
			irqmask);

	if (r)
		return r;

	time_left = FUNC3(&completion,
			timeout);

	FUNC2(dispc_irq_wait_handler, &completion, irqmask);

	if (time_left == 0)
		return -ETIMEDOUT;

	if (time_left == -ERESTARTSYS)
		return -ERESTARTSYS;

	return 0;
}