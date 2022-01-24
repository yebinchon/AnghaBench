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
struct virtio_device {int dummy; } ;
struct virtio_ccw_device {TYPE_1__* cdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *) ; 
 struct virtio_ccw_device* FUNC1 (struct virtio_device*) ; 

__attribute__((used)) static const char *FUNC2(struct virtio_device *vdev)
{
	struct virtio_ccw_device *vcdev = FUNC1(vdev);

	return FUNC0(&vcdev->cdev->dev);
}