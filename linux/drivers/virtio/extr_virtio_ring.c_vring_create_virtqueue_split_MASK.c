#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vring {int dummy; } ;
struct virtqueue {int dummy; } ;
struct virtio_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {size_t queue_size_in_bytes; int /*<<< orphan*/  queue_dma_addr; } ;
struct TYPE_4__ {int we_own_ring; TYPE_1__ split; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 size_t PAGE_SIZE ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 struct virtqueue* FUNC0 (unsigned int,struct vring,struct virtio_device*,int,int,int (*) (struct virtqueue*),void (*) (struct virtqueue*),char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 TYPE_2__* FUNC2 (struct virtqueue*) ; 
 void* FUNC3 (struct virtio_device*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_device*,size_t,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vring*,unsigned int,void*,unsigned int) ; 
 size_t FUNC6 (unsigned int,unsigned int) ; 

__attribute__((used)) static struct virtqueue *FUNC7(
	unsigned int index,
	unsigned int num,
	unsigned int vring_align,
	struct virtio_device *vdev,
	bool weak_barriers,
	bool may_reduce_num,
	bool context,
	bool (*notify)(struct virtqueue *),
	void (*callback)(struct virtqueue *),
	const char *name)
{
	struct virtqueue *vq;
	void *queue = NULL;
	dma_addr_t dma_addr;
	size_t queue_size_in_bytes;
	struct vring vring;

	/* We assume num is a power of 2. */
	if (num & (num - 1)) {
		FUNC1(&vdev->dev, "Bad virtqueue length %u\n", num);
		return NULL;
	}

	/* TODO: allocate each queue chunk individually */
	for (; num && FUNC6(num, vring_align) > PAGE_SIZE; num /= 2) {
		queue = FUNC3(vdev, FUNC6(num, vring_align),
					  &dma_addr,
					  GFP_KERNEL|__GFP_NOWARN|__GFP_ZERO);
		if (queue)
			break;
		if (!may_reduce_num)
			return NULL;
	}

	if (!num)
		return NULL;

	if (!queue) {
		/* Try to get a single page. You are my only hope! */
		queue = FUNC3(vdev, FUNC6(num, vring_align),
					  &dma_addr, GFP_KERNEL|__GFP_ZERO);
	}
	if (!queue)
		return NULL;

	queue_size_in_bytes = FUNC6(num, vring_align);
	FUNC5(&vring, num, queue, vring_align);

	vq = FUNC0(index, vring, vdev, weak_barriers, context,
				   notify, callback, name);
	if (!vq) {
		FUNC4(vdev, queue_size_in_bytes, queue,
				 dma_addr);
		return NULL;
	}

	FUNC2(vq)->split.queue_dma_addr = dma_addr;
	FUNC2(vq)->split.queue_size_in_bytes = queue_size_in_bytes;
	FUNC2(vq)->we_own_ring = true;

	return vq;
}