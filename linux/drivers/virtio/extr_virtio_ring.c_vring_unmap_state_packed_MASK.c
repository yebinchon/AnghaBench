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
typedef  int u16 ;
struct vring_virtqueue {int /*<<< orphan*/  use_dma_api; } ;
struct vring_desc_extra_packed {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int VRING_DESC_F_INDIRECT ; 
 int VRING_DESC_F_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vring_virtqueue const*) ; 

__attribute__((used)) static void FUNC3(const struct vring_virtqueue *vq,
				     struct vring_desc_extra_packed *state)
{
	u16 flags;

	if (!vq->use_dma_api)
		return;

	flags = state->flags;

	if (flags & VRING_DESC_F_INDIRECT) {
		FUNC1(FUNC2(vq),
				 state->addr, state->len,
				 (flags & VRING_DESC_F_WRITE) ?
				 DMA_FROM_DEVICE : DMA_TO_DEVICE);
	} else {
		FUNC0(FUNC2(vq),
			       state->addr, state->len,
			       (flags & VRING_DESC_F_WRITE) ?
			       DMA_FROM_DEVICE : DMA_TO_DEVICE);
	}
}