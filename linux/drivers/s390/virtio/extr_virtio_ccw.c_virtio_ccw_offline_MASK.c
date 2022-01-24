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
struct virtio_ccw_device {int /*<<< orphan*/  vdev; scalar_t__ device_lost; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct virtio_ccw_device* FUNC6 (struct ccw_device*) ; 

__attribute__((used)) static int FUNC7(struct ccw_device *cdev)
{
	unsigned long flags;
	struct virtio_ccw_device *vcdev = FUNC6(cdev);

	if (!vcdev)
		return 0;
	if (vcdev->device_lost)
		FUNC5(&vcdev->vdev);
	FUNC4(&vcdev->vdev);
	FUNC2(FUNC1(cdev), flags);
	FUNC0(&cdev->dev, NULL);
	FUNC3(FUNC1(cdev), flags);
	return 0;
}