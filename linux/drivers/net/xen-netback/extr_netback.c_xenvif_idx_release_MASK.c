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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct xenvif_queue {size_t* pending_ring; int /*<<< orphan*/  response_lock; int /*<<< orphan*/  pending_prod; struct pending_tx_info* pending_tx_info; } ;
struct pending_tx_info {int /*<<< orphan*/  extra_count; int /*<<< orphan*/  req; } ;
typedef  size_t pending_ring_idx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xenvif_queue*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct xenvif_queue *queue, u16 pending_idx,
			       u8 status)
{
	struct pending_tx_info *pending_tx_info;
	pending_ring_idx_t index;
	unsigned long flags;

	pending_tx_info = &queue->pending_tx_info[pending_idx];

	FUNC3(&queue->response_lock, flags);

	FUNC0(queue, &pending_tx_info->req,
			 pending_tx_info->extra_count, status);

	/* Release the pending index before pusing the Tx response so
	 * its available before a new Tx request is pushed by the
	 * frontend.
	 */
	index = FUNC1(queue->pending_prod++);
	queue->pending_ring[index] = pending_idx;

	FUNC2(queue);

	FUNC4(&queue->response_lock, flags);
}