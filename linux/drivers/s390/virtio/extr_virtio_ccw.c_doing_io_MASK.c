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
struct virtio_ccw_device {int curr_io; int /*<<< orphan*/  cdev; scalar_t__ err; } ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct virtio_ccw_device *vcdev, __u32 flag)
{
	unsigned long flags;
	__u32 ret;

	FUNC1(FUNC0(vcdev->cdev), flags);
	if (vcdev->err)
		ret = 0;
	else
		ret = vcdev->curr_io & flag;
	FUNC2(FUNC0(vcdev->cdev), flags);
	return ret;
}