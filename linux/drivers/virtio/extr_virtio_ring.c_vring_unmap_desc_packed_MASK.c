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
struct vring_packed_desc {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int VRING_DESC_F_INDIRECT ; 
 int VRING_DESC_F_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vring_virtqueue const*) ; 

__attribute__((used)) static void FUNC6(const struct vring_virtqueue *vq,
				   struct vring_packed_desc *desc)
{
	u16 flags;

	if (!vq->use_dma_api)
		return;

	flags = FUNC2(desc->flags);

	if (flags & VRING_DESC_F_INDIRECT) {
		FUNC1(FUNC5(vq),
				 FUNC4(desc->addr),
				 FUNC3(desc->len),
				 (flags & VRING_DESC_F_WRITE) ?
				 DMA_FROM_DEVICE : DMA_TO_DEVICE);
	} else {
		FUNC0(FUNC5(vq),
			       FUNC4(desc->addr),
			       FUNC3(desc->len),
			       (flags & VRING_DESC_F_WRITE) ?
			       DMA_FROM_DEVICE : DMA_TO_DEVICE);
	}
}