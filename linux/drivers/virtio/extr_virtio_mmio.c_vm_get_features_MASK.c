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
typedef  int u64 ;
struct virtio_mmio_device {scalar_t__ base; } ;
struct virtio_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIRTIO_MMIO_DEVICE_FEATURES ; 
 scalar_t__ VIRTIO_MMIO_DEVICE_FEATURES_SEL ; 
 int FUNC0 (scalar_t__) ; 
 struct virtio_mmio_device* FUNC1 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static u64 FUNC3(struct virtio_device *vdev)
{
	struct virtio_mmio_device *vm_dev = FUNC1(vdev);
	u64 features;

	FUNC2(1, vm_dev->base + VIRTIO_MMIO_DEVICE_FEATURES_SEL);
	features = FUNC0(vm_dev->base + VIRTIO_MMIO_DEVICE_FEATURES);
	features <<= 32;

	FUNC2(0, vm_dev->base + VIRTIO_MMIO_DEVICE_FEATURES_SEL);
	features |= FUNC0(vm_dev->base + VIRTIO_MMIO_DEVICE_FEATURES);

	return features;
}