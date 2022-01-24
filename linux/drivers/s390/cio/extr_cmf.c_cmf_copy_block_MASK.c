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
struct TYPE_5__ {int /*<<< orphan*/  scsw; } ;
struct subchannel {TYPE_2__ schib; } ;
struct cmb_data {int /*<<< orphan*/  last_update; int /*<<< orphan*/  size; int /*<<< orphan*/  last_block; void* hw_block; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_1__ dev; } ;
struct TYPE_6__ {struct cmb_data* cmb; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int SCSW_ACTL_DEVACT ; 
 int SCSW_ACTL_SCHACT ; 
 int SCSW_ACTL_SUSPENDED ; 
 int SCSW_FCTL_START_FUNC ; 
 int SCSW_STCTL_SEC_STATUS ; 
 scalar_t__ FUNC0 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct subchannel* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ccw_device *cdev)
{
	struct subchannel *sch = FUNC6(cdev->dev.parent);
	struct cmb_data *cmb_data;
	void *hw_block;

	if (FUNC0(sch))
		return -ENODEV;

	if (FUNC4(&sch->schib.scsw) & SCSW_FCTL_START_FUNC) {
		/* Don't copy if a start function is in progress. */
		if ((!(FUNC3(&sch->schib.scsw) & SCSW_ACTL_SUSPENDED)) &&
		    (FUNC3(&sch->schib.scsw) &
		     (SCSW_ACTL_DEVACT | SCSW_ACTL_SCHACT)) &&
		    (!(FUNC5(&sch->schib.scsw) & SCSW_STCTL_SEC_STATUS)))
			return -EBUSY;
	}
	cmb_data = cdev->private->cmb;
	hw_block = cmb_data->hw_block;
	FUNC2(cmb_data->last_block, hw_block, cmb_data->size);
	cmb_data->last_update = FUNC1();
	return 0;
}