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
struct tb_ring {size_t hop; int size; int /*<<< orphan*/  work; TYPE_2__* nhi; scalar_t__ descriptors_dma; int /*<<< orphan*/ * descriptors; scalar_t__ running; scalar_t__ is_tx; } ;
struct TYPE_4__ {TYPE_1__* pdev; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** rx_rings; int /*<<< orphan*/ ** tx_rings; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb_ring*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_ring*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct tb_ring *ring)
{
	FUNC7(&ring->nhi->lock);
	/*
	 * Dissociate the ring from the NHI. This also ensures that
	 * nhi_interrupt_work cannot reschedule ring->work.
	 */
	if (ring->is_tx)
		ring->nhi->tx_rings[ring->hop] = NULL;
	else
		ring->nhi->rx_rings[ring->hop] = NULL;

	if (ring->running) {
		FUNC1(&ring->nhi->pdev->dev, "%s %d still running\n",
			 FUNC0(ring), ring->hop);
	}
	FUNC8(&ring->nhi->lock);

	FUNC6(ring);

	FUNC3(&ring->nhi->pdev->dev,
			  ring->size * sizeof(*ring->descriptors),
			  ring->descriptors, ring->descriptors_dma);

	ring->descriptors = NULL;
	ring->descriptors_dma = 0;


	FUNC2(&ring->nhi->pdev->dev, "freeing %s %d\n", FUNC0(ring),
		ring->hop);

	/**
	 * ring->work can no longer be scheduled (it is scheduled only
	 * by nhi_interrupt_work, ring_stop and ring_msix). Wait for it
	 * to finish before freeing the ring.
	 */
	FUNC4(&ring->work);
	FUNC5(ring);
}