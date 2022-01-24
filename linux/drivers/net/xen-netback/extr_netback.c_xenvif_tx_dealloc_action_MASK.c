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
typedef  size_t u16 ;
struct xenvif_queue {scalar_t__ dealloc_cons; scalar_t__ dealloc_prod; size_t* dealloc_ring; struct gnttab_unmap_grant_ref* tx_unmap_ops; TYPE_1__* vif; int /*<<< orphan*/ * pages_to_unmap; int /*<<< orphan*/ * grant_tx_handle; int /*<<< orphan*/ * mmap_pages; } ;
struct gnttab_unmap_grant_ref {scalar_t__ status; int /*<<< orphan*/  handle; int /*<<< orphan*/  host_addr; } ;
typedef  scalar_t__ pending_ring_idx_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GNTMAP_host_map ; 
 scalar_t__ GNTST_okay ; 
 int MAX_PENDING_REQS ; 
 int /*<<< orphan*/  XEN_NETIF_RSP_OKAY ; 
 int /*<<< orphan*/  FUNC2 (struct gnttab_unmap_grant_ref*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gnttab_unmap_grant_ref*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xenvif_queue*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct xenvif_queue*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct xenvif_queue*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC10(struct xenvif_queue *queue)
{
	struct gnttab_unmap_grant_ref *gop;
	pending_ring_idx_t dc, dp;
	u16 pending_idx, pending_idx_release[MAX_PENDING_REQS];
	unsigned int i = 0;

	dc = queue->dealloc_cons;
	gop = queue->tx_unmap_ops;

	/* Free up any grants we have finished using */
	do {
		dp = queue->dealloc_prod;

		/* Ensure we see all indices enqueued by all
		 * xenvif_zerocopy_callback().
		 */
		FUNC7();

		while (dc != dp) {
			FUNC1(gop - queue->tx_unmap_ops >= MAX_PENDING_REQS);
			pending_idx =
				queue->dealloc_ring[FUNC6(dc++)];

			pending_idx_release[gop - queue->tx_unmap_ops] =
				pending_idx;
			queue->pages_to_unmap[gop - queue->tx_unmap_ops] =
				queue->mmap_pages[pending_idx];
			FUNC2(gop,
					    FUNC4(queue, pending_idx),
					    GNTMAP_host_map,
					    queue->grant_tx_handle[pending_idx]);
			FUNC8(queue, pending_idx);
			++gop;
		}

	} while (dp != queue->dealloc_prod);

	queue->dealloc_cons = dc;

	if (gop - queue->tx_unmap_ops > 0) {
		int ret;
		ret = FUNC3(queue->tx_unmap_ops,
					NULL,
					queue->pages_to_unmap,
					gop - queue->tx_unmap_ops);
		if (ret) {
			FUNC5(queue->vif->dev, "Unmap fail: nr_ops %tu ret %d\n",
				   gop - queue->tx_unmap_ops, ret);
			for (i = 0; i < gop - queue->tx_unmap_ops; ++i) {
				if (gop[i].status != GNTST_okay)
					FUNC5(queue->vif->dev,
						   " host_addr: 0x%llx handle: 0x%x status: %d\n",
						   gop[i].host_addr,
						   gop[i].handle,
						   gop[i].status);
			}
			FUNC0();
		}
	}

	for (i = 0; i < gop - queue->tx_unmap_ops; ++i)
		FUNC9(queue, pending_idx_release[i],
				   XEN_NETIF_RSP_OKAY);
}