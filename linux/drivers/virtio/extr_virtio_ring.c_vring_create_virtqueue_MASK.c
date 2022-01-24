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
struct virtqueue {int dummy; } ;
struct virtio_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_F_RING_PACKED ; 
 scalar_t__ FUNC0 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 struct virtqueue* FUNC1 (unsigned int,unsigned int,unsigned int,struct virtio_device*,int,int,int,int (*) (struct virtqueue*),void (*) (struct virtqueue*),char const*) ; 
 struct virtqueue* FUNC2 (unsigned int,unsigned int,unsigned int,struct virtio_device*,int,int,int,int (*) (struct virtqueue*),void (*) (struct virtqueue*),char const*) ; 

struct virtqueue *FUNC3(
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

	if (FUNC0(vdev, VIRTIO_F_RING_PACKED))
		return FUNC1(index, num, vring_align,
				vdev, weak_barriers, may_reduce_num,
				context, notify, callback, name);

	return FUNC2(index, num, vring_align,
			vdev, weak_barriers, may_reduce_num,
			context, notify, callback, name);
}