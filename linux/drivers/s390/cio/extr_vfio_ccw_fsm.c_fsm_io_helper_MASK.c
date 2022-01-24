#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lpm; } ;
union orb {TYPE_4__ cmd; } ;
typedef  int /*<<< orphan*/  u32 ;
struct vfio_ccw_private {int /*<<< orphan*/  state; int /*<<< orphan*/  cp; struct subchannel* sch; } ;
struct TYPE_5__ {int /*<<< orphan*/  actl; } ;
struct TYPE_6__ {TYPE_1__ cmd; } ;
struct TYPE_7__ {TYPE_2__ scsw; } ;
struct subchannel {int /*<<< orphan*/  lock; int /*<<< orphan*/  lpm; TYPE_3__ schib; int /*<<< orphan*/  schid; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  ccode ;
typedef  scalar_t__ addr_t ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int EACCES ; 
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  SCSW_ACTL_START_PEND ; 
 int /*<<< orphan*/  FUNC0 (int,int*,int) ; 
 int /*<<< orphan*/  VFIO_CCW_STATE_CP_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct subchannel*) ; 
 union orb* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ ,union orb*) ; 

__attribute__((used)) static int FUNC8(struct vfio_ccw_private *private)
{
	struct subchannel *sch;
	union orb *orb;
	int ccode;
	__u8 lpm;
	unsigned long flags;
	int ret;

	sch = private->sch;

	FUNC5(sch->lock, flags);

	orb = FUNC3(&private->cp, (u32)(addr_t)sch, sch->lpm);
	if (!orb) {
		ret = -EIO;
		goto out;
	}

	FUNC1(5, "stIO");
	FUNC1(5, FUNC4(&sch->dev));

	/* Issue "Start Subchannel" */
	ccode = FUNC7(sch->schid, orb);

	FUNC0(5, &ccode, sizeof(ccode));

	switch (ccode) {
	case 0:
		/*
		 * Initialize device status information
		 */
		sch->schib.scsw.cmd.actl |= SCSW_ACTL_START_PEND;
		ret = 0;
		private->state = VFIO_CCW_STATE_CP_PENDING;
		break;
	case 1:		/* Status pending */
	case 2:		/* Busy */
		ret = -EBUSY;
		break;
	case 3:		/* Device/path not operational */
	{
		lpm = orb->cmd.lpm;
		if (lpm != 0)
			sch->lpm &= ~lpm;
		else
			sch->lpm = 0;

		if (FUNC2(sch))
			ret = -ENODEV;
		else
			ret = sch->lpm ? -EACCES : -ENODEV;
		break;
	}
	default:
		ret = ccode;
	}
out:
	FUNC6(sch->lock, flags);
	return ret;
}