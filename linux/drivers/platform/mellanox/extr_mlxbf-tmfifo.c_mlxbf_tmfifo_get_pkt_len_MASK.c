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
typedef  size_t u32 ;
struct vring_desc {int /*<<< orphan*/  next; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; } ;
struct vring {struct vring_desc* desc; } ;
struct virtio_device {int dummy; } ;
struct mlxbf_tmfifo_vring {TYPE_1__* vq; } ;
struct TYPE_2__ {struct virtio_device* vdev; } ;

/* Variables and functions */
 size_t VRING_DESC_F_NEXT ; 
 size_t FUNC0 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 struct vring* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static u32 FUNC3(struct mlxbf_tmfifo_vring *vring,
				    struct vring_desc *desc)
{
	const struct vring *vr = FUNC2(vring->vq);
	struct virtio_device *vdev = vring->vq->vdev;
	u32 len = 0, idx;

	while (desc) {
		len += FUNC1(vdev, desc->len);
		if (!(FUNC0(vdev, desc->flags) & VRING_DESC_F_NEXT))
			break;
		idx = FUNC0(vdev, desc->next);
		desc = &vr->desc[idx];
	}

	return len;
}