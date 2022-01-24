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
typedef  int u32 ;
struct timer_list {int dummy; } ;
struct oxu_hcd {int reclaim_ready; int /*<<< orphan*/  lock; int /*<<< orphan*/  async; int /*<<< orphan*/  actions; TYPE_1__* regs; scalar_t__ reclaim; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int STS_IAA ; 
 int /*<<< orphan*/  TIMER_ASYNC_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct oxu_hcd*) ; 
 struct oxu_hcd* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct oxu_hcd* oxu ; 
 int /*<<< orphan*/  FUNC2 (struct oxu_hcd*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct oxu_hcd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  watchdog ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct oxu_hcd	*oxu = FUNC1(oxu, t, watchdog);
	unsigned long flags;

	FUNC4(&oxu->lock, flags);

	/* lost IAA irqs wedge things badly; seen with a vt8235 */
	if (oxu->reclaim) {
		u32 status = FUNC3(&oxu->regs->status);
		if (status & STS_IAA) {
			FUNC2(oxu, "lost IAA\n");
			FUNC8(STS_IAA, &oxu->regs->status);
			oxu->reclaim_ready = 1;
		}
	}

	/* stop async processing after it's idled a bit */
	if (FUNC7(TIMER_ASYNC_OFF, &oxu->actions))
		FUNC6(oxu, oxu->async);

	/* oxu could run by timer, without IRQs ... */
	FUNC0(oxu);

	FUNC5(&oxu->lock, flags);
}