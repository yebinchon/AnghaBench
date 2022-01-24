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
typedef  scalar_t__ u16 ;
struct TYPE_6__ {TYPE_1__* used; } ;
struct TYPE_5__ {TYPE_3__ vring; scalar_t__ avail_idx_shadow; } ;
struct vring_virtqueue {TYPE_2__ split; scalar_t__ event; scalar_t__ num_added; int /*<<< orphan*/  weak_barriers; } ;
struct virtqueue {int /*<<< orphan*/  vdev; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  VRING_USED_F_NO_NOTIFY ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vring_virtqueue* FUNC5 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool FUNC10(struct virtqueue *_vq)
{
	struct vring_virtqueue *vq = FUNC5(_vq);
	u16 new, old;
	bool needs_kick;

	FUNC3(vq);
	/* We need to expose available array entries before checking avail
	 * event. */
	FUNC7(vq->weak_barriers);

	old = vq->split.avail_idx_shadow - vq->num_added;
	new = vq->split.avail_idx_shadow;
	vq->num_added = 0;

	FUNC1(vq);
	FUNC2(vq);

	if (vq->event) {
		needs_kick = FUNC9(FUNC6(_vq->vdev,
					FUNC8(&vq->split.vring)),
					      new, old);
	} else {
		needs_kick = !(vq->split.vring.used->flags &
					FUNC4(_vq->vdev,
						VRING_USED_F_NO_NOTIFY));
	}
	FUNC0(vq);
	return needs_kick;
}