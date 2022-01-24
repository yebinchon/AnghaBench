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
struct tb_ring {int running; int /*<<< orphan*/  work; TYPE_2__* nhi; int /*<<< orphan*/  lock; scalar_t__ tail; scalar_t__ head; int /*<<< orphan*/  hop; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* pdev; scalar_t__ going_away; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb_ring*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_ring*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tb_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct tb_ring *ring)
{
	FUNC10(&ring->nhi->lock);
	FUNC9(&ring->lock);
	FUNC2(&ring->nhi->pdev->dev, "stopping %s %d\n",
		FUNC0(ring), ring->hop);
	if (ring->nhi->going_away)
		goto err;
	if (!ring->running) {
		FUNC1(&ring->nhi->pdev->dev, "%s %d already stopped\n",
			 FUNC0(ring), ring->hop);
		goto err;
	}
	FUNC4(ring, false);

	FUNC6(ring, 0, 0);
	FUNC7(ring, 0, 0);
	FUNC5(ring, 0, 8);
	FUNC5(ring, 0, 12);
	ring->head = 0;
	ring->tail = 0;
	ring->running = false;

err:
	FUNC11(&ring->lock);
	FUNC12(&ring->nhi->lock);

	/*
	 * schedule ring->work to invoke callbacks on all remaining frames.
	 */
	FUNC8(&ring->work);
	FUNC3(&ring->work);
}