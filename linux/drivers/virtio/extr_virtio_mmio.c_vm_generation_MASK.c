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
typedef  int /*<<< orphan*/  u32 ;
struct virtio_mmio_device {int version; scalar_t__ base; } ;
struct virtio_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIRTIO_MMIO_CONFIG_GENERATION ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct virtio_mmio_device* FUNC1 (struct virtio_device*) ; 

__attribute__((used)) static u32 FUNC2(struct virtio_device *vdev)
{
	struct virtio_mmio_device *vm_dev = FUNC1(vdev);

	if (vm_dev->version == 1)
		return 0;
	else
		return FUNC0(vm_dev->base + VIRTIO_MMIO_CONFIG_GENERATION);
}