#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ena; } ;
struct TYPE_4__ {int /*<<< orphan*/  scsw; TYPE_1__ pmcw; } ;
struct subchannel {TYPE_2__ schib; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int SCSW_ACTL_CLEAR_PEND ; 
 int SCSW_ACTL_HALT_PEND ; 
 int FUNC0 (struct subchannel*) ; 
 int FUNC1 (struct subchannel*) ; 
 int FUNC2 (struct subchannel*) ; 
 scalar_t__ FUNC3 (struct subchannel*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct subchannel *sch, int *iretry)
{
	int ret;

	if (FUNC3(sch))
		return -ENODEV;
	if (!sch->schib.pmcw.ena)
		/* Not operational -> done. */
		return 0;
	/* Stage 1: cancel io. */
	if (!(FUNC4(&sch->schib.scsw) & SCSW_ACTL_HALT_PEND) &&
	    !(FUNC4(&sch->schib.scsw) & SCSW_ACTL_CLEAR_PEND)) {
		if (!FUNC5(&sch->schib.scsw)) {
			ret = FUNC0(sch);
			if (ret != -EINVAL)
				return ret;
		}
		/*
		 * Cancel io unsuccessful or not applicable (transport mode).
		 * Continue with asynchronous instructions.
		 */
		*iretry = 3;	/* 3 halt retries. */
	}
	/* Stage 2: halt io. */
	if (!(FUNC4(&sch->schib.scsw) & SCSW_ACTL_CLEAR_PEND)) {
		if (*iretry) {
			*iretry -= 1;
			ret = FUNC2(sch);
			if (ret != -EBUSY)
				return (ret == 0) ? -EBUSY : ret;
		}
		/* Halt io unsuccessful. */
		*iretry = 255;	/* 255 clear retries. */
	}
	/* Stage 3: clear io. */
	if (*iretry) {
		*iretry -= 1;
		ret = FUNC1(sch);
		return (ret == 0) ? -EBUSY : ret;
	}
	/* Function was unsuccessful */
	return -EIO;
}