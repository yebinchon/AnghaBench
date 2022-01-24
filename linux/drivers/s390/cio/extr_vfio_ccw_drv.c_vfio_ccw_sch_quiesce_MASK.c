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
struct vfio_ccw_private {int /*<<< orphan*/  state; int /*<<< orphan*/ * completion; } ;
struct TYPE_6__ {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; } ;
struct TYPE_4__ {int /*<<< orphan*/  ena; } ;
struct TYPE_5__ {TYPE_1__ pmcw; } ;
struct subchannel {int /*<<< orphan*/  lock; TYPE_3__ schid; TYPE_2__ schib; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  VFIO_CCW_STATE_NOT_OPER ; 
 int FUNC1 (struct subchannel*,int*) ; 
 int FUNC2 (struct subchannel*) ; 
 int /*<<< orphan*/  completion ; 
 struct vfio_ccw_private* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vfio_ccw_work_q ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

int FUNC9(struct subchannel *sch)
{
	struct vfio_ccw_private *private = FUNC3(&sch->dev);
	FUNC0(completion);
	int iretry, ret = 0;

	FUNC6(sch->lock);
	if (!sch->schib.pmcw.ena)
		goto out_unlock;
	ret = FUNC2(sch);
	if (ret != -EBUSY)
		goto out_unlock;

	iretry = 255;
	do {

		ret = FUNC1(sch, &iretry);

		if (ret == -EIO) {
			FUNC5("vfio_ccw: could not quiesce subchannel 0.%x.%04x!\n",
			       sch->schid.ssid, sch->schid.sch_no);
			break;
		}

		/*
		 * Flush all I/O and wait for
		 * cancel/halt/clear completion.
		 */
		private->completion = &completion;
		FUNC7(sch->lock);

		if (ret == -EBUSY)
			FUNC8(&completion, 3*HZ);

		private->completion = NULL;
		FUNC4(vfio_ccw_work_q);
		FUNC6(sch->lock);
		ret = FUNC2(sch);
	} while (ret == -EBUSY);
out_unlock:
	private->state = VFIO_CCW_STATE_NOT_OPER;
	FUNC7(sch->lock);
	return ret;
}