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
typedef  scalar_t__ u32 ;
struct cmb_data {scalar_t__ hw_block; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {struct cmb_data* cmb; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ccw_device*,scalar_t__,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct ccw_device *cdev, u32 mme)
{
	unsigned long mba;
	struct cmb_data *cmb_data;
	unsigned long flags;

	FUNC1(cdev->ccwlock, flags);
	if (!cdev->private->cmb) {
		FUNC2(cdev->ccwlock, flags);
		return -EINVAL;
	}
	cmb_data = cdev->private->cmb;
	mba = mme ? (unsigned long) cmb_data->hw_block : 0;
	FUNC2(cdev->ccwlock, flags);

	return FUNC0(cdev, mme, 1, mba);
}