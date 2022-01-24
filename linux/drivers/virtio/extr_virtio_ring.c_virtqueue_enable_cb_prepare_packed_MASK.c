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
typedef  int u16 ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_6__ {int used_wrap_counter; int event_flags_shadow; TYPE_2__ vring; } ;
struct vring_virtqueue {int last_used_idx; TYPE_3__ packed; scalar_t__ event; int /*<<< orphan*/  weak_barriers; } ;
struct virtqueue {int dummy; } ;
struct TYPE_4__ {void* flags; void* off_wrap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct vring_virtqueue*) ; 
 int VRING_PACKED_EVENT_FLAG_DESC ; 
 int VRING_PACKED_EVENT_FLAG_DISABLE ; 
 int VRING_PACKED_EVENT_FLAG_ENABLE ; 
 int VRING_PACKED_EVENT_F_WRAP_CTR ; 
 void* FUNC2 (int) ; 
 struct vring_virtqueue* FUNC3 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC5(struct virtqueue *_vq)
{
	struct vring_virtqueue *vq = FUNC3(_vq);

	FUNC1(vq);

	/*
	 * We optimistically turn back on interrupts, then check if there was
	 * more to do.
	 */

	if (vq->event) {
		vq->packed.vring.driver->off_wrap =
			FUNC2(vq->last_used_idx |
				(vq->packed.used_wrap_counter <<
				 VRING_PACKED_EVENT_F_WRAP_CTR));
		/*
		 * We need to update event offset and event wrap
		 * counter first before updating event flags.
		 */
		FUNC4(vq->weak_barriers);
	}

	if (vq->packed.event_flags_shadow == VRING_PACKED_EVENT_FLAG_DISABLE) {
		vq->packed.event_flags_shadow = vq->event ?
				VRING_PACKED_EVENT_FLAG_DESC :
				VRING_PACKED_EVENT_FLAG_ENABLE;
		vq->packed.vring.driver->flags =
				FUNC2(vq->packed.event_flags_shadow);
	}

	FUNC0(vq);
	return vq->last_used_idx | ((u16)vq->packed.used_wrap_counter <<
			VRING_PACKED_EVENT_F_WRAP_CTR);
}