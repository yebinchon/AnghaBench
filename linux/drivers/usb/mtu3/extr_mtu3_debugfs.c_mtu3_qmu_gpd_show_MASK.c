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
struct seq_file {struct mtu3_ep* private; } ;
struct qmu_gpd {int /*<<< orphan*/  dw3_info; int /*<<< orphan*/  buffer; int /*<<< orphan*/  next_gpd; int /*<<< orphan*/  dw0_info; } ;
struct mtu3_gpd_ring {scalar_t__ dma; struct qmu_gpd* start; } ;
struct mtu3_ep {int flags; struct mtu3_gpd_ring gpd_ring; struct mtu3* mtu; } ;
struct mtu3 {int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int MAX_GPD_NUM ; 
 int MTU3_EP_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int,scalar_t__*,struct qmu_gpd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct seq_file *sf, void *unused)
{
	struct mtu3_ep *mep = sf->private;
	struct mtu3 *mtu = mep->mtu;
	struct mtu3_gpd_ring *ring;
	struct qmu_gpd *gpd;
	dma_addr_t dma;
	unsigned long flags;
	int i;

	FUNC2(&mtu->lock, flags);
	ring = &mep->gpd_ring;
	gpd = ring->start;
	if (!gpd || !(mep->flags & MTU3_EP_ENABLED)) {
		FUNC1(sf, "empty!\n");
		goto out;
	}

	for (i = 0; i < MAX_GPD_NUM; i++, gpd++) {
		dma = ring->dma + i * sizeof(*gpd);
		FUNC0(sf, "gpd.%03d -> %pad, %p: %08x %08x %08x %08x\n",
			   i, &dma, gpd, gpd->dw0_info, gpd->next_gpd,
			   gpd->buffer, gpd->dw3_info);
	}

out:
	FUNC3(&mtu->lock, flags);

	return 0;
}