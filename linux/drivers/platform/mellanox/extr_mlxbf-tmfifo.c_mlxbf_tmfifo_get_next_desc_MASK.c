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
struct vring_desc {int dummy; } ;
struct vring {unsigned int num; struct vring_desc* desc; TYPE_1__* avail; } ;
struct virtio_device {int dummy; } ;
struct mlxbf_tmfifo_vring {unsigned int next_avail; TYPE_2__* vq; } ;
struct TYPE_4__ {struct virtio_device* vdev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ring; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 struct vring* FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static struct vring_desc *
FUNC3(struct mlxbf_tmfifo_vring *vring)
{
	const struct vring *vr = FUNC2(vring->vq);
	struct virtio_device *vdev = vring->vq->vdev;
	unsigned int idx, head;

	if (vring->next_avail == FUNC1(vdev, vr->avail->idx))
		return NULL;

	idx = vring->next_avail % vr->num;
	head = FUNC1(vdev, vr->avail->ring[idx]);
	if (FUNC0(head >= vr->num))
		return NULL;

	vring->next_avail++;

	return &vr->desc[head];
}