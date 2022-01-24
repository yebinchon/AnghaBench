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
typedef  size_t u16 ;
struct TYPE_5__ {TYPE_1__* desc; } ;
struct TYPE_6__ {TYPE_2__ vring; } ;
struct vring_virtqueue {TYPE_3__ packed; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int VRING_PACKED_DESC_F_AVAIL ; 
 int VRING_PACKED_DESC_F_USED ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC1(const struct vring_virtqueue *vq,
				       u16 idx, bool used_wrap_counter)
{
	bool avail, used;
	u16 flags;

	flags = FUNC0(vq->packed.vring.desc[idx].flags);
	avail = !!(flags & (1 << VRING_PACKED_DESC_F_AVAIL));
	used = !!(flags & (1 << VRING_PACKED_DESC_F_USED));

	return avail == used && used == used_wrap_counter;
}