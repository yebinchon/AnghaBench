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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ num; scalar_t__ device; } ;
struct TYPE_4__ {TYPE_1__ vring; scalar_t__ avail_wrap_counter; scalar_t__ next_avail_idx; } ;
struct vring_virtqueue {TYPE_2__ packed; scalar_t__ num_added; int /*<<< orphan*/  weak_barriers; } ;
struct virtqueue {int dummy; } ;
typedef  scalar_t__ __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct vring_virtqueue*) ; 
 scalar_t__ VRING_PACKED_EVENT_FLAG_DESC ; 
 scalar_t__ VRING_PACKED_EVENT_FLAG_DISABLE ; 
 scalar_t__ VRING_PACKED_EVENT_F_WRAP_CTR ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 struct vring_virtqueue* FUNC5 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool FUNC8(struct virtqueue *_vq)
{
	struct vring_virtqueue *vq = FUNC5(_vq);
	u16 new, old, off_wrap, flags, wrap_counter, event_idx;
	bool needs_kick;
	union {
		struct {
			__le16 off_wrap;
			__le16 flags;
		};
		u32 u32;
	} snapshot;

	FUNC3(vq);

	/*
	 * We need to expose the new flags value before checking notification
	 * suppressions.
	 */
	FUNC6(vq->weak_barriers);

	old = vq->packed.next_avail_idx - vq->num_added;
	new = vq->packed.next_avail_idx;
	vq->num_added = 0;

	snapshot.u32 = *(u32 *)vq->packed.vring.device;
	flags = FUNC4(snapshot.flags);

	FUNC1(vq);
	FUNC2(vq);

	if (flags != VRING_PACKED_EVENT_FLAG_DESC) {
		needs_kick = (flags != VRING_PACKED_EVENT_FLAG_DISABLE);
		goto out;
	}

	off_wrap = FUNC4(snapshot.off_wrap);

	wrap_counter = off_wrap >> VRING_PACKED_EVENT_F_WRAP_CTR;
	event_idx = off_wrap & ~(1 << VRING_PACKED_EVENT_F_WRAP_CTR);
	if (wrap_counter != vq->packed.avail_wrap_counter)
		event_idx -= vq->packed.vring.num;

	needs_kick = FUNC7(event_idx, new, old);
out:
	FUNC0(vq);
	return needs_kick;
}