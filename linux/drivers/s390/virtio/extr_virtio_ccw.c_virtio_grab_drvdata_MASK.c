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
struct virtio_ccw_device {int going_away; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct virtio_ccw_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static struct virtio_ccw_device *FUNC4(struct ccw_device *cdev)
{
	unsigned long flags;
	struct virtio_ccw_device *vcdev;

	FUNC2(FUNC1(cdev), flags);
	vcdev = FUNC0(&cdev->dev);
	if (!vcdev || vcdev->going_away) {
		FUNC3(FUNC1(cdev), flags);
		return NULL;
	}
	vcdev->going_away = true;
	FUNC3(FUNC1(cdev), flags);
	return vcdev;
}