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
struct subchannel {int opm; int lpm; int /*<<< orphan*/  ssd_info; } ;
struct chp_link {int dummy; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {int path_gone_mask; int path_new_mask; } ;

/* Variables and functions */
#define  CHP_OFFLINE 131 
#define  CHP_ONLINE 130 
#define  CHP_VARY_OFF 129 
#define  CHP_VARY_ON 128 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *,struct chp_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC2 (struct subchannel*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct subchannel*) ; 
 struct ccw_device* FUNC4 (struct subchannel*) ; 

__attribute__((used)) static int FUNC5(struct subchannel *sch,
				   struct chp_link *link, int event)
{
	struct ccw_device *cdev = FUNC4(sch);
	int mask;

	mask = FUNC0(&sch->ssd_info, link);
	if (!mask)
		return 0;
	switch (event) {
	case CHP_VARY_OFF:
		sch->opm &= ~mask;
		sch->lpm &= ~mask;
		if (cdev)
			cdev->private->path_gone_mask |= mask;
		FUNC2(sch, mask);
		break;
	case CHP_VARY_ON:
		sch->opm |= mask;
		sch->lpm |= mask;
		if (cdev)
			cdev->private->path_new_mask |= mask;
		FUNC3(sch);
		break;
	case CHP_OFFLINE:
		if (FUNC1(sch))
			return -ENODEV;
		if (cdev)
			cdev->private->path_gone_mask |= mask;
		FUNC2(sch, mask);
		break;
	case CHP_ONLINE:
		if (FUNC1(sch))
			return -ENODEV;
		sch->lpm |= mask & sch->opm;
		if (cdev)
			cdev->private->path_new_mask |= mask;
		FUNC3(sch);
		break;
	}
	return 0;
}