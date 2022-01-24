#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mtu3_gpd_ring {int /*<<< orphan*/  dma; int /*<<< orphan*/  start; } ;
struct mtu3_ep {TYPE_1__* mtu; struct mtu3_gpd_ring gpd_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  qmu_gpd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtu3_gpd_ring*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct mtu3_ep *mep)
{
	struct mtu3_gpd_ring *ring = &mep->gpd_ring;

	FUNC0(mep->mtu->qmu_gpd_pool,
			ring->start, ring->dma);
	FUNC1(ring, 0, sizeof(*ring));
}