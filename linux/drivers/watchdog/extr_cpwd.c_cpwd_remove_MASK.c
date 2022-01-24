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
struct platform_device {int /*<<< orphan*/ * resource; } ;
struct cpwd {int /*<<< orphan*/  regs; int /*<<< orphan*/  irq; scalar_t__ initialized; scalar_t__ broken; TYPE_1__* devs; int /*<<< orphan*/  enabled; } ;
struct TYPE_2__ {int runstatus; int /*<<< orphan*/  misc; } ;

/* Variables and functions */
 int WD_NUMDEVS ; 
 int WD_STAT_BSTOP ; 
 int WD_TIMER_REGSZ ; 
 int /*<<< orphan*/ * cpwd_device ; 
 int /*<<< orphan*/  FUNC0 (struct cpwd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpwd*,int) ; 
 int /*<<< orphan*/  cpwd_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cpwd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct cpwd* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *op)
{
	struct cpwd *p = FUNC6(op);
	int i;

	for (i = 0; i < WD_NUMDEVS; i++) {
		FUNC4(&p->devs[i].misc);

		if (!p->enabled) {
			FUNC1(p, i);
			if (p->devs[i].runstatus & WD_STAT_BSTOP)
				FUNC0(p, i);
		}
	}

	if (p->broken)
		FUNC2(&cpwd_timer);

	if (p->initialized)
		FUNC3(p->irq, p);

	FUNC5(&op->resource[0], p->regs, 4 * WD_TIMER_REGSZ);

	cpwd_device = NULL;

	return 0;
}