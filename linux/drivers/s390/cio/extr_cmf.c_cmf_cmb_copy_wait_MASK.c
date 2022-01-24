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
struct copy_block_struct {int ret; int /*<<< orphan*/  wait; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {scalar_t__ state; struct copy_block_struct* cmb_wait; int /*<<< orphan*/  cmb; } ;

/* Variables and functions */
 int CMF_PENDING ; 
 scalar_t__ DEV_STATE_CMFUPDATE ; 
 scalar_t__ DEV_STATE_ONLINE ; 
 int EBUSY ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ccw_device *cdev)
{
	struct copy_block_struct copy_block;
	int ret = -ENODEV;

	FUNC2(cdev->ccwlock);
	if (!cdev->private->cmb)
		goto out;

	ret = FUNC0(cdev);
	if (ret != -EBUSY)
		goto out;

	if (cdev->private->state != DEV_STATE_ONLINE)
		goto out;

	FUNC1(&copy_block.wait);
	copy_block.ret = CMF_PENDING;

	cdev->private->state = DEV_STATE_CMFUPDATE;
	cdev->private->cmb_wait = &copy_block;
	FUNC3(cdev->ccwlock);

	ret = FUNC4(copy_block.wait,
				       copy_block.ret != CMF_PENDING);
	FUNC2(cdev->ccwlock);
	if (ret) {
		if (copy_block.ret == CMF_PENDING) {
			copy_block.ret = -ERESTARTSYS;
			if (cdev->private->state == DEV_STATE_CMFUPDATE)
				cdev->private->state = DEV_STATE_ONLINE;
		}
	}
	cdev->private->cmb_wait = NULL;
	ret = copy_block.ret;
out:
	FUNC3(cdev->ccwlock);
	return ret;
}