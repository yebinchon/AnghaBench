#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  struct vring_desc* u32 ;
typedef  size_t u16 ;
struct vring_desc {int dummy; } ;
struct vring {size_t num; int desc; TYPE_2__* used; } ;
struct virtio_device {int dummy; } ;
struct mlxbf_tmfifo_vring {TYPE_3__* vq; } ;
struct TYPE_6__ {struct virtio_device* vdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  idx; TYPE_1__* ring; } ;
struct TYPE_4__ {void* len; void* id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtio_device*,size_t) ; 
 void* FUNC1 (struct virtio_device*,struct vring_desc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t FUNC3 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 struct vring* FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(struct mlxbf_tmfifo_vring *vring,
				      struct vring_desc *desc, u32 len)
{
	const struct vring *vr = FUNC4(vring->vq);
	struct virtio_device *vdev = vring->vq->vdev;
	u16 idx, vr_idx;

	vr_idx = FUNC3(vdev, vr->used->idx);
	idx = vr_idx % vr->num;
	vr->used->ring[idx].id = FUNC1(vdev, desc - vr->desc);
	vr->used->ring[idx].len = FUNC1(vdev, len);

	/*
	 * Virtio could poll and check the 'idx' to decide whether the desc is
	 * done or not. Add a memory barrier here to make sure the update above
	 * completes before updating the idx.
	 */
	FUNC2();
	vr->used->idx = FUNC0(vdev, vr_idx + 1);
}