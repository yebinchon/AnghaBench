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
struct virtio_ccw_device {int curr_io; int err; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  cdev; } ;
struct ccw1 {int dummy; } ;
typedef  int __u32 ;

/* Variables and functions */
 int EBUSY ; 
 int VIRTIO_CCW_INTPARM_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ccw1*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct virtio_ccw_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct virtio_ccw_device *vcdev,
			 struct ccw1 *ccw, __u32 intparm)
{
	int ret;
	unsigned long flags;
	int flag = intparm & VIRTIO_CCW_INTPARM_MASK;

	FUNC4(&vcdev->io_lock);
	do {
		FUNC6(FUNC3(vcdev->cdev), flags);
		ret = FUNC0(vcdev->cdev, ccw, intparm, 0, 0);
		if (!ret) {
			if (!vcdev->curr_io)
				vcdev->err = 0;
			vcdev->curr_io |= flag;
		}
		FUNC7(FUNC3(vcdev->cdev), flags);
		FUNC1();
	} while (ret == -EBUSY);
	FUNC8(vcdev->wait_q, FUNC2(vcdev, flag) == 0);
	ret = ret ? ret : vcdev->err;
	FUNC5(&vcdev->io_lock);
	return ret;
}