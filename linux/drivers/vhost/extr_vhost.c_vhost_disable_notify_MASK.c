#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vhost_virtqueue {int used_flags; TYPE_1__* used; } ;
struct vhost_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_RING_F_EVENT_IDX ; 
 int VRING_USED_F_NO_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (struct vhost_virtqueue*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct vhost_virtqueue*,char*,int /*<<< orphan*/ *,int) ; 

void FUNC3(struct vhost_dev *dev, struct vhost_virtqueue *vq)
{
	int r;

	if (vq->used_flags & VRING_USED_F_NO_NOTIFY)
		return;
	vq->used_flags |= VRING_USED_F_NO_NOTIFY;
	if (!FUNC0(vq, VIRTIO_RING_F_EVENT_IDX)) {
		r = FUNC1(vq);
		if (r)
			FUNC2(vq, "Failed to enable notification at %p: %d\n",
			       &vq->used->flags, r);
	}
}