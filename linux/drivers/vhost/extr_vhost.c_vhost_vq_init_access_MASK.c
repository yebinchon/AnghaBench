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
struct vhost_virtqueue {int is_le; int signalled_used_valid; int /*<<< orphan*/  last_used_idx; TYPE_1__* used; int /*<<< orphan*/  iotlb; int /*<<< orphan*/  private_data; } ;
typedef  int /*<<< orphan*/  __virtio16 ;
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_virtqueue*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vhost_virtqueue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_virtqueue*) ; 
 int FUNC4 (struct vhost_virtqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct vhost_virtqueue*,char*,int /*<<< orphan*/ *) ; 

int FUNC6(struct vhost_virtqueue *vq)
{
	__virtio16 last_used_idx;
	int r;
	bool is_le = vq->is_le;

	if (!vq->private_data)
		return 0;

	FUNC3(vq);

	r = FUNC4(vq);
	if (r)
		goto err;
	vq->signalled_used_valid = false;
	if (!vq->iotlb &&
	    !FUNC0(&vq->used->idx, sizeof vq->used->idx)) {
		r = -EFAULT;
		goto err;
	}
	r = FUNC2(vq, &last_used_idx);
	if (r) {
		FUNC5(vq, "Can't access used idx at %p\n",
		       &vq->used->idx);
		goto err;
	}
	vq->last_used_idx = FUNC1(vq, last_used_idx);
	return 0;

err:
	vq->is_le = is_le;
	return r;
}