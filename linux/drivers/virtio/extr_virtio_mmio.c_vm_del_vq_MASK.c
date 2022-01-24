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
struct virtqueue {unsigned int index; struct virtio_mmio_vq_info* priv; int /*<<< orphan*/  vdev; } ;
struct virtio_mmio_vq_info {int /*<<< orphan*/  node; } ;
struct virtio_mmio_device {int version; scalar_t__ base; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ VIRTIO_MMIO_QUEUE_PFN ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_READY ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_mmio_vq_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct virtio_mmio_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct virtqueue *vq)
{
	struct virtio_mmio_device *vm_dev = FUNC6(vq->vdev);
	struct virtio_mmio_vq_info *info = vq->priv;
	unsigned long flags;
	unsigned int index = vq->index;

	FUNC4(&vm_dev->lock, flags);
	FUNC2(&info->node);
	FUNC5(&vm_dev->lock, flags);

	/* Select and deactivate the queue */
	FUNC8(index, vm_dev->base + VIRTIO_MMIO_QUEUE_SEL);
	if (vm_dev->version == 1) {
		FUNC8(0, vm_dev->base + VIRTIO_MMIO_QUEUE_PFN);
	} else {
		FUNC8(0, vm_dev->base + VIRTIO_MMIO_QUEUE_READY);
		FUNC0(FUNC3(vm_dev->base + VIRTIO_MMIO_QUEUE_READY));
	}

	FUNC7(vq);

	FUNC1(info);
}