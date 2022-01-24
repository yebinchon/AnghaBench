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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  tx_zerocopy_fail; int /*<<< orphan*/  tx_zerocopy_success; } ;
struct xenvif_queue {scalar_t__ dealloc_prod; scalar_t__ dealloc_cons; TYPE_1__ stats; int /*<<< orphan*/  callback_lock; int /*<<< orphan*/ * dealloc_ring; } ;
struct ubuf_info {scalar_t__ ctx; int /*<<< orphan*/  desc; } ;
typedef  size_t pending_ring_idx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MAX_PENDING_REQS ; 
 scalar_t__ FUNC1 (int) ; 
 size_t FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct xenvif_queue* FUNC6 (struct ubuf_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct xenvif_queue*) ; 

void FUNC8(struct ubuf_info *ubuf, bool zerocopy_success)
{
	unsigned long flags;
	pending_ring_idx_t index;
	struct xenvif_queue *queue = FUNC6(ubuf);

	/* This is the only place where we grab this lock, to protect callbacks
	 * from each other.
	 */
	FUNC4(&queue->callback_lock, flags);
	do {
		u16 pending_idx = ubuf->desc;
		ubuf = (struct ubuf_info *) ubuf->ctx;
		FUNC0(queue->dealloc_prod - queue->dealloc_cons >=
			MAX_PENDING_REQS);
		index = FUNC2(queue->dealloc_prod);
		queue->dealloc_ring[index] = pending_idx;
		/* Sync with xenvif_tx_dealloc_action:
		 * insert idx then incr producer.
		 */
		FUNC3();
		queue->dealloc_prod++;
	} while (ubuf);
	FUNC5(&queue->callback_lock, flags);

	if (FUNC1(zerocopy_success))
		queue->stats.tx_zerocopy_success++;
	else
		queue->stats.tx_zerocopy_fail++;
	FUNC7(queue);
}