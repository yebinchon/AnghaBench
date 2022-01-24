#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned int num; TYPE_2__* avail; } ;
struct TYPE_10__ {TYPE_4__ vring; int /*<<< orphan*/  avail_idx_shadow; TYPE_1__* desc_state; } ;
struct TYPE_8__ {unsigned int num_free; } ;
struct vring_virtqueue {TYPE_5__ split; TYPE_3__ vq; } ;
struct virtqueue {int /*<<< orphan*/  vdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  idx; } ;
struct TYPE_6__ {void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vring_virtqueue*,unsigned int,int /*<<< orphan*/ *) ; 
 struct vring_virtqueue* FUNC5 (struct virtqueue*) ; 

__attribute__((used)) static void *FUNC6(struct virtqueue *_vq)
{
	struct vring_virtqueue *vq = FUNC5(_vq);
	unsigned int i;
	void *buf;

	FUNC2(vq);

	for (i = 0; i < vq->split.vring.num; i++) {
		if (!vq->split.desc_state[i].data)
			continue;
		/* detach_buf_split clears data, so grab it now. */
		buf = vq->split.desc_state[i].data;
		FUNC4(vq, i, NULL);
		vq->split.avail_idx_shadow--;
		vq->split.vring.avail->idx = FUNC3(_vq->vdev,
				vq->split.avail_idx_shadow);
		FUNC1(vq);
		return buf;
	}
	/* That should have freed everything. */
	FUNC0(vq->vq.num_free != vq->split.vring.num);

	FUNC1(vq);
	return NULL;
}