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
struct mtu3_gpd_ring {int /*<<< orphan*/  dequeue; int /*<<< orphan*/  enqueue; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  dma; } ;
struct mtu3_ep {struct mtu3_gpd_ring gpd_ring; struct mtu3* mtu; } ;
struct mtu3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct seq_file *sf, void *unused)
{
	struct mtu3_ep *mep = sf->private;
	struct mtu3 *mtu = mep->mtu;
	struct mtu3_gpd_ring *ring;
	unsigned long flags;

	ring = &mep->gpd_ring;
	FUNC1(&mtu->lock, flags);
	FUNC0(sf,
		   "qmu-ring - dma:%pad, start:%p, end:%p, enq:%p, dep:%p\n",
		   &ring->dma, ring->start, ring->end,
		   ring->enqueue, ring->dequeue);
	FUNC2(&mtu->lock, flags);

	return 0;
}