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
struct virtio_mmio_device {scalar_t__ base; } ;
struct virtio_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIRTIO_MMIO_STATUS ; 
 struct virtio_mmio_device* FUNC0 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct virtio_device *vdev)
{
	struct virtio_mmio_device *vm_dev = FUNC0(vdev);

	/* 0 status means a reset. */
	FUNC1(0, vm_dev->base + VIRTIO_MMIO_STATUS);
}