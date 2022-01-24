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
struct qmu_gpd {int dummy; } ;
struct mtu3_gpd_ring {int /*<<< orphan*/  dma; } ;
struct mtu3_ep {TYPE_1__* mtu; struct mtu3_gpd_ring gpd_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  qmu_gpd_pool; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct qmu_gpd* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mtu3_gpd_ring*,struct qmu_gpd*) ; 

int FUNC2(struct mtu3_ep *mep)
{
	struct qmu_gpd *gpd;
	struct mtu3_gpd_ring *ring = &mep->gpd_ring;

	/* software own all gpds as default */
	gpd = FUNC0(mep->mtu->qmu_gpd_pool, GFP_ATOMIC, &ring->dma);
	if (gpd == NULL)
		return -ENOMEM;

	FUNC1(ring, gpd);

	return 0;
}