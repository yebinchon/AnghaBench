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
struct vfio_ccw_private {scalar_t__ state; scalar_t__ mdev; } ;
struct subchannel {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  todo_work; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  VFIO_CCW_EVENT_NOT_OPER ; 
 scalar_t__ VFIO_CCW_STATE_IDLE ; 
 scalar_t__ VFIO_CCW_STATE_NOT_OPER ; 
 scalar_t__ VFIO_CCW_STATE_STANDBY ; 
 scalar_t__ FUNC0 (struct subchannel*) ; 
 struct vfio_ccw_private* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct vfio_ccw_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct subchannel *sch, int process)
{
	struct vfio_ccw_private *private = FUNC1(&sch->dev);
	unsigned long flags;
	int rc = -EAGAIN;

	FUNC3(sch->lock, flags);
	if (!FUNC2(&sch->dev))
		goto out_unlock;

	if (FUNC6(&sch->todo_work))
		goto out_unlock;

	if (FUNC0(sch)) {
		FUNC5(private, VFIO_CCW_EVENT_NOT_OPER);
		rc = 0;
		goto out_unlock;
	}

	private = FUNC1(&sch->dev);
	if (private->state == VFIO_CCW_STATE_NOT_OPER) {
		private->state = private->mdev ? VFIO_CCW_STATE_IDLE :
				 VFIO_CCW_STATE_STANDBY;
	}
	rc = 0;

out_unlock:
	FUNC4(sch->lock, flags);

	return rc;
}