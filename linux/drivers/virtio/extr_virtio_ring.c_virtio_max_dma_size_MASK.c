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
struct virtio_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct virtio_device*) ; 

size_t FUNC2(struct virtio_device *vdev)
{
	size_t max_segment_size = SIZE_MAX;

	if (FUNC1(vdev))
		max_segment_size = FUNC0(&vdev->dev);

	return max_segment_size;
}