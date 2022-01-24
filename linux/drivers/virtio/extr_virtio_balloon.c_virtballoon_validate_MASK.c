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
struct virtio_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_BALLOON_F_PAGE_POISON ; 
 int /*<<< orphan*/  VIRTIO_F_IOMMU_PLATFORM ; 
 int /*<<< orphan*/  FUNC0 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct virtio_device *vdev)
{
	if (!FUNC1())
		FUNC0(vdev, VIRTIO_BALLOON_F_PAGE_POISON);

	FUNC0(vdev, VIRTIO_F_IOMMU_PLATFORM);
	return 0;
}