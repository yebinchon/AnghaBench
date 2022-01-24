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
typedef  int u32 ;
struct virtio_mmio_device {int version; scalar_t__ base; } ;
struct virtio_device {int features; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VIRTIO_F_VERSION_1 ; 
 scalar_t__ VIRTIO_MMIO_DRIVER_FEATURES ; 
 scalar_t__ VIRTIO_MMIO_DRIVER_FEATURES_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct virtio_mmio_device* FUNC2 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct virtio_device *vdev)
{
	struct virtio_mmio_device *vm_dev = FUNC2(vdev);

	/* Give virtio_ring a chance to accept features. */
	FUNC3(vdev);

	/* Make sure there is are no mixed devices */
	if (vm_dev->version == 2 &&
			!FUNC0(vdev, VIRTIO_F_VERSION_1)) {
		FUNC1(&vdev->dev, "New virtio-mmio devices (version 2) must provide VIRTIO_F_VERSION_1 feature!\n");
		return -EINVAL;
	}

	FUNC4(1, vm_dev->base + VIRTIO_MMIO_DRIVER_FEATURES_SEL);
	FUNC4((u32)(vdev->features >> 32),
			vm_dev->base + VIRTIO_MMIO_DRIVER_FEATURES);

	FUNC4(0, vm_dev->base + VIRTIO_MMIO_DRIVER_FEATURES_SEL);
	FUNC4((u32)vdev->features,
			vm_dev->base + VIRTIO_MMIO_DRIVER_FEATURES);

	return 0;
}