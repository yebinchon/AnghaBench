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
typedef  int u32 ;
struct virtqueue {struct virtio_mmio_vq_info* priv; } ;
struct virtio_mmio_vq_info {int /*<<< orphan*/  node; struct virtqueue* vq; } ;
struct virtio_mmio_device {int version; scalar_t__ base; int /*<<< orphan*/  lock; int /*<<< orphan*/  virtqueues; } ;
struct virtio_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct virtqueue* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_ALIGN ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_AVAIL_HIGH ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_AVAIL_LOW ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_DESC_HIGH ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_DESC_LOW ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_NUM ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_NUM_MAX ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_PFN ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_READY ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_SEL ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_USED_HIGH ; 
 scalar_t__ VIRTIO_MMIO_QUEUE_USED_LOW ; 
 int /*<<< orphan*/  VIRTIO_MMIO_VRING_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_mmio_vq_info*) ; 
 struct virtio_mmio_vq_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct virtio_mmio_device* FUNC9 (struct virtio_device*) ; 
 int FUNC10 (struct virtqueue*) ; 
 int FUNC11 (struct virtqueue*) ; 
 int FUNC12 (struct virtqueue*) ; 
 int FUNC13 (struct virtqueue*) ; 
 int /*<<< orphan*/  vm_notify ; 
 struct virtqueue* FUNC14 (unsigned int,unsigned int,int /*<<< orphan*/ ,struct virtio_device*,int,int,int,int /*<<< orphan*/ ,void (*) (struct virtqueue*),char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 

__attribute__((used)) static struct virtqueue *FUNC17(struct virtio_device *vdev, unsigned index,
				  void (*callback)(struct virtqueue *vq),
				  const char *name, bool ctx)
{
	struct virtio_mmio_device *vm_dev = FUNC9(vdev);
	struct virtio_mmio_vq_info *info;
	struct virtqueue *vq;
	unsigned long flags;
	unsigned int num;
	int err;

	if (!name)
		return NULL;

	/* Select the queue we're interested in */
	FUNC16(index, vm_dev->base + VIRTIO_MMIO_QUEUE_SEL);

	/* Queue shouldn't already be set up. */
	if (FUNC6(vm_dev->base + (vm_dev->version == 1 ?
			VIRTIO_MMIO_QUEUE_PFN : VIRTIO_MMIO_QUEUE_READY))) {
		err = -ENOENT;
		goto error_available;
	}

	/* Allocate and fill out our active queue description */
	info = FUNC4(sizeof(*info), GFP_KERNEL);
	if (!info) {
		err = -ENOMEM;
		goto error_kmalloc;
	}

	num = FUNC6(vm_dev->base + VIRTIO_MMIO_QUEUE_NUM_MAX);
	if (num == 0) {
		err = -ENOENT;
		goto error_new_virtqueue;
	}

	/* Create the vring */
	vq = FUNC14(index, num, VIRTIO_MMIO_VRING_ALIGN, vdev,
				 true, true, ctx, vm_notify, callback, name);
	if (!vq) {
		err = -ENOMEM;
		goto error_new_virtqueue;
	}

	/* Activate the queue */
	FUNC16(FUNC13(vq), vm_dev->base + VIRTIO_MMIO_QUEUE_NUM);
	if (vm_dev->version == 1) {
		u64 q_pfn = FUNC11(vq) >> PAGE_SHIFT;

		/*
		 * virtio-mmio v1 uses a 32bit QUEUE PFN. If we have something
		 * that doesn't fit in 32bit, fail the setup rather than
		 * pretending to be successful.
		 */
		if (q_pfn >> 32) {
			FUNC2(&vdev->dev,
				"platform bug: legacy virtio-mmio must not be used with RAM above 0x%llxGB\n",
				0x1ULL << (32 + PAGE_SHIFT - 30));
			err = -E2BIG;
			goto error_bad_pfn;
		}

		FUNC16(PAGE_SIZE, vm_dev->base + VIRTIO_MMIO_QUEUE_ALIGN);
		FUNC16(q_pfn, vm_dev->base + VIRTIO_MMIO_QUEUE_PFN);
	} else {
		u64 addr;

		addr = FUNC11(vq);
		FUNC16((u32)addr, vm_dev->base + VIRTIO_MMIO_QUEUE_DESC_LOW);
		FUNC16((u32)(addr >> 32),
				vm_dev->base + VIRTIO_MMIO_QUEUE_DESC_HIGH);

		addr = FUNC10(vq);
		FUNC16((u32)addr, vm_dev->base + VIRTIO_MMIO_QUEUE_AVAIL_LOW);
		FUNC16((u32)(addr >> 32),
				vm_dev->base + VIRTIO_MMIO_QUEUE_AVAIL_HIGH);

		addr = FUNC12(vq);
		FUNC16((u32)addr, vm_dev->base + VIRTIO_MMIO_QUEUE_USED_LOW);
		FUNC16((u32)(addr >> 32),
				vm_dev->base + VIRTIO_MMIO_QUEUE_USED_HIGH);

		FUNC16(1, vm_dev->base + VIRTIO_MMIO_QUEUE_READY);
	}

	vq->priv = info;
	info->vq = vq;

	FUNC7(&vm_dev->lock, flags);
	FUNC5(&info->node, &vm_dev->virtqueues);
	FUNC8(&vm_dev->lock, flags);

	return vq;

error_bad_pfn:
	FUNC15(vq);
error_new_virtqueue:
	if (vm_dev->version == 1) {
		FUNC16(0, vm_dev->base + VIRTIO_MMIO_QUEUE_PFN);
	} else {
		FUNC16(0, vm_dev->base + VIRTIO_MMIO_QUEUE_READY);
		FUNC1(FUNC6(vm_dev->base + VIRTIO_MMIO_QUEUE_READY));
	}
	FUNC3(info);
error_kmalloc:
error_available:
	return FUNC0(err);
}