#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct oxu_hcd {int scanning; int next_uframe; scalar_t__ periodic_sched; TYPE_2__* async; scalar_t__ reclaim_ready; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_5__ {TYPE_1__ qh_next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_IO_WATCHDOG ; 
 int /*<<< orphan*/  FUNC1 (struct oxu_hcd*) ; 
 TYPE_3__* FUNC2 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct oxu_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct oxu_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct oxu_hcd *oxu)
{
	FUNC6(oxu, TIMER_IO_WATCHDOG);
	if (oxu->reclaim_ready)
		FUNC1(oxu);

	/* another CPU may drop oxu->lock during a schedule scan while
	 * it reports urb completions.  this flag guards against bogus
	 * attempts at re-entrant schedule scanning.
	 */
	if (oxu->scanning)
		return;
	oxu->scanning = 1;
	FUNC3(oxu);
	if (oxu->next_uframe != -1)
		FUNC4(oxu);
	oxu->scanning = 0;

	/* the IO watchdog guards against hardware or driver bugs that
	 * misplace IRQs, and should let us run completely without IRQs.
	 * such lossage has been observed on both VT6202 and VT8235.
	 */
	if (FUNC0(FUNC2(oxu)->state) &&
			(oxu->async->qh_next.ptr != NULL ||
			 oxu->periodic_sched != 0))
		FUNC5(oxu, TIMER_IO_WATCHDOG);
}