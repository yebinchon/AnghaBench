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
typedef  int /*<<< orphan*/  u32 ;
struct set_schib_struct {int mbfc; unsigned long address; int ret; int /*<<< orphan*/  wait; int /*<<< orphan*/  mme; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {scalar_t__ state; struct set_schib_struct* cmb_wait; int /*<<< orphan*/  cmb; } ;

/* Variables and functions */
 int CMF_PENDING ; 
 scalar_t__ DEV_STATE_CMFCHANGE ; 
 scalar_t__ DEV_STATE_ONLINE ; 
 int EBUSY ; 
 int ENODEV ; 
 int ETIME ; 
 int /*<<< orphan*/  SET_SCHIB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ccw_device*,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ccw_device *cdev, u32 mme,
			  int mbfc, unsigned long address)
{
	struct set_schib_struct set_data;
	int ret = -ENODEV;

	FUNC2(cdev->ccwlock);
	if (!cdev->private->cmb)
		goto out;

	ret = FUNC1(cdev, mme, mbfc, address);
	if (ret != -EBUSY)
		goto out;

	/* if the device is not online, don't even try again */
	if (cdev->private->state != DEV_STATE_ONLINE)
		goto out;

	FUNC0(&set_data.wait);
	set_data.mme = mme;
	set_data.mbfc = mbfc;
	set_data.address = address;
	set_data.ret = CMF_PENDING;

	cdev->private->state = DEV_STATE_CMFCHANGE;
	cdev->private->cmb_wait = &set_data;
	FUNC3(cdev->ccwlock);

	ret = FUNC4(set_data.wait,
					       set_data.ret != CMF_PENDING,
					       SET_SCHIB_TIMEOUT);
	FUNC2(cdev->ccwlock);
	if (ret <= 0) {
		if (set_data.ret == CMF_PENDING) {
			set_data.ret = (ret == 0) ? -ETIME : ret;
			if (cdev->private->state == DEV_STATE_CMFCHANGE)
				cdev->private->state = DEV_STATE_ONLINE;
		}
	}
	cdev->private->cmb_wait = NULL;
	ret = set_data.ret;
out:
	FUNC3(cdev->ccwlock);
	return ret;
}