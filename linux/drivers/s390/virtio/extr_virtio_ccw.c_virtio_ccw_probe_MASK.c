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
struct ccw_device {int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ccw_device*) ; 
 int /*<<< orphan*/  virtio_ccw_auto_online ; 
 scalar_t__ FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  virtio_ccw_int_handler ; 

__attribute__((used)) static int FUNC2(struct ccw_device *cdev)
{
	cdev->handler = virtio_ccw_int_handler;

	if (FUNC1(cdev))
		FUNC0(virtio_ccw_auto_online, cdev);
	return 0;
}