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
struct wa_rpipe {int /*<<< orphan*/  wa; } ;

/* Variables and functions */
 int FUNC0 (struct wa_rpipe*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wa_rpipe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wa_rpipe *rpipe)
{
	int dto_waiting;
	int dto_done = FUNC0(rpipe, &dto_waiting);

	/*
	 * If this RPIPE is waiting on the DTO resource, add it to the tail of
	 * the waiting list.
	 * Otherwise, if the WA DTO resource was acquired and released by
	 *  __wa_xfer_delayed_run, another RPIPE may have attempted to acquire
	 * DTO and failed during that time.  Check the delayed list and process
	 * any waiters.  Start searching from the next RPIPE index.
	 */
	if (dto_waiting)
		FUNC1(rpipe->wa, rpipe);
	else if (dto_done)
		FUNC2(rpipe->wa);
}