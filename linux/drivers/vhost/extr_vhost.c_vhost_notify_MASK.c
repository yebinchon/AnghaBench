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
struct vhost_virtqueue {scalar_t__ avail_idx; scalar_t__ last_avail_idx; int signalled_used_valid; int /*<<< orphan*/  last_used_idx; int /*<<< orphan*/  signalled_used; } ;
struct vhost_dev {int dummy; } ;
typedef  int __virtio16 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_F_NOTIFY_ON_EMPTY ; 
 int /*<<< orphan*/  VIRTIO_RING_F_EVENT_IDX ; 
 int /*<<< orphan*/  VRING_AVAIL_F_NO_INTERRUPT ; 
 int FUNC0 (struct vhost_virtqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_virtqueue*,int) ; 
 scalar_t__ FUNC4 (struct vhost_virtqueue*,int*) ; 
 scalar_t__ FUNC5 (struct vhost_virtqueue*,int*) ; 
 scalar_t__ FUNC6 (struct vhost_virtqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vhost_virtqueue*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(struct vhost_dev *dev, struct vhost_virtqueue *vq)
{
	__u16 old, new;
	__virtio16 event;
	bool v;
	/* Flush out used index updates. This is paired
	 * with the barrier that the Guest executes when enabling
	 * interrupts. */
	FUNC1();

	if (FUNC6(vq, VIRTIO_F_NOTIFY_ON_EMPTY) &&
	    FUNC2(vq->avail_idx == vq->last_avail_idx))
		return true;

	if (!FUNC6(vq, VIRTIO_RING_F_EVENT_IDX)) {
		__virtio16 flags;
		if (FUNC4(vq, &flags)) {
			FUNC7(vq, "Failed to get flags");
			return true;
		}
		return !(flags & FUNC0(vq, VRING_AVAIL_F_NO_INTERRUPT));
	}
	old = vq->signalled_used;
	v = vq->signalled_used_valid;
	new = vq->signalled_used = vq->last_used_idx;
	vq->signalled_used_valid = true;

	if (FUNC2(!v))
		return true;

	if (FUNC5(vq, &event)) {
		FUNC7(vq, "Failed to get used event idx");
		return true;
	}
	return FUNC8(FUNC3(vq, event), new, old);
}