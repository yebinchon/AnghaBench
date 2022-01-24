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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct subchannel {int /*<<< orphan*/  lock; } ;
struct stlck_data {int rc; int /*<<< orphan*/  done; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct ccw_device {TYPE_3__* private; scalar_t__ drv; TYPE_1__ dev; } ;
typedef  scalar_t__ addr_t ;
struct TYPE_5__ {int /*<<< orphan*/  force; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; TYPE_2__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATE_BOXED ; 
 int /*<<< orphan*/  DEV_STATE_STEAL_LOCK ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ccw_device*,struct stlck_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct subchannel*) ; 
 int FUNC3 (struct subchannel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct subchannel* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct ccw_device *cdev)
{
	struct subchannel *sch = FUNC9(cdev->dev.parent);
	struct stlck_data data;
	u8 *buffer;
	int rc;

	/* Check if steal lock operation is valid for this device. */
	if (cdev->drv) {
		if (!cdev->private->options.force)
			return -EINVAL;
	}
	buffer = FUNC6(64, GFP_DMA | GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;
	FUNC4(&data.done);
	data.rc = -EIO;
	FUNC7(sch->lock);
	rc = FUNC3(sch, (u32) (addr_t) sch);
	if (rc)
		goto out_unlock;
	/* Perform operation. */
	cdev->private->state = DEV_STATE_STEAL_LOCK;
	FUNC0(cdev, &data, &buffer[0], &buffer[32]);
	FUNC8(sch->lock);
	/* Wait for operation to finish. */
	if (FUNC11(&data.done)) {
		/* Got a signal. */
		FUNC7(sch->lock);
		FUNC1(cdev);
		FUNC8(sch->lock);
		FUNC10(&data.done);
	}
	rc = data.rc;
	/* Check results. */
	FUNC7(sch->lock);
	FUNC2(sch);
	cdev->private->state = DEV_STATE_BOXED;
out_unlock:
	FUNC8(sch->lock);
	FUNC5(buffer);

	return rc;
}