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
typedef  int u32 ;
typedef  int u16 ;
struct tb_ring {int running; int flags; int size; int sof_mask; int eof_mask; TYPE_2__* nhi; int /*<<< orphan*/  lock; scalar_t__ is_tx; int /*<<< orphan*/  descriptors_dma; int /*<<< orphan*/  hop; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* pdev; scalar_t__ going_away; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int REG_RX_OPTIONS_E2E_HOP_MASK ; 
 int REG_RX_OPTIONS_E2E_HOP_SHIFT ; 
 int RING_E2E_UNUSED_HOPID ; 
 int RING_FLAG_E2E ; 
 int RING_FLAG_E2E_FLOW_CONTROL ; 
 int RING_FLAG_ENABLE ; 
 int RING_FLAG_FRAME ; 
 int RING_FLAG_RAW ; 
 int /*<<< orphan*/  FUNC0 (struct tb_ring*) ; 
 int TB_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_ring*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_ring*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_ring*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct tb_ring *ring)
{
	u16 frame_size;
	u32 flags;

	FUNC8(&ring->nhi->lock);
	FUNC7(&ring->lock);
	if (ring->nhi->going_away)
		goto err;
	if (ring->running) {
		FUNC1(&ring->nhi->pdev->dev, "ring already started\n");
		goto err;
	}
	FUNC2(&ring->nhi->pdev->dev, "starting %s %d\n",
		FUNC0(ring), ring->hop);

	if (ring->flags & RING_FLAG_FRAME) {
		/* Means 4096 */
		frame_size = 0;
		flags = RING_FLAG_ENABLE;
	} else {
		frame_size = TB_FRAME_SIZE;
		flags = RING_FLAG_ENABLE | RING_FLAG_RAW;
	}

	if (ring->flags & RING_FLAG_E2E && !ring->is_tx) {
		u32 hop;

		/*
		 * In order not to lose Rx packets we enable end-to-end
		 * workaround which transfers Rx credits to an unused Tx
		 * HopID.
		 */
		hop = RING_E2E_UNUSED_HOPID << REG_RX_OPTIONS_E2E_HOP_SHIFT;
		hop &= REG_RX_OPTIONS_E2E_HOP_MASK;
		flags |= hop | RING_FLAG_E2E_FLOW_CONTROL;
	}

	FUNC6(ring, ring->descriptors_dma, 0);
	if (ring->is_tx) {
		FUNC4(ring, ring->size, 12);
		FUNC5(ring, 0, 4); /* time releated ? */
		FUNC5(ring, flags, 0);
	} else {
		u32 sof_eof_mask = ring->sof_mask << 16 | ring->eof_mask;

		FUNC4(ring, (frame_size << 16) | ring->size, 12);
		FUNC5(ring, sof_eof_mask, 4);
		FUNC5(ring, flags, 0);
	}
	FUNC3(ring, true);
	ring->running = true;
err:
	FUNC9(&ring->lock);
	FUNC10(&ring->nhi->lock);
}