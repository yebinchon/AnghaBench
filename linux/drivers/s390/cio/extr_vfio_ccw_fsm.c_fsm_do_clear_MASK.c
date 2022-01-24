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
struct vfio_ccw_private {struct subchannel* sch; } ;
struct TYPE_4__ {int /*<<< orphan*/  actl; } ;
struct TYPE_5__ {TYPE_1__ cmd; } ;
struct TYPE_6__ {TYPE_2__ scsw; } ;
struct subchannel {int /*<<< orphan*/  lock; TYPE_3__ schib; int /*<<< orphan*/  schid; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ccode ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SCSW_ACTL_CLEAR_PEND ; 
 int /*<<< orphan*/  FUNC0 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct vfio_ccw_private *private)
{
	struct subchannel *sch;
	unsigned long flags;
	int ccode;
	int ret;

	sch = private->sch;

	FUNC4(sch->lock, flags);

	FUNC1(2, "clearIO");
	FUNC1(2, FUNC3(&sch->dev));

	/* Issue "Clear Subchannel" */
	ccode = FUNC2(sch->schid);

	FUNC0(2, &ccode, sizeof(ccode));

	switch (ccode) {
	case 0:
		/*
		 * Initialize device status information
		 */
		sch->schib.scsw.cmd.actl = SCSW_ACTL_CLEAR_PEND;
		/* TODO: check what else we might need to clear */
		ret = 0;
		break;
	case 3:		/* Device not operational */
		ret = -ENODEV;
		break;
	default:
		ret = ccode;
	}
	FUNC5(sch->lock, flags);
	return ret;
}