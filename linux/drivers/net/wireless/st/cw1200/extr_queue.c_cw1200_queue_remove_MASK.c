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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct cw1200_txpriv {int dummy; } ;
struct cw1200_queue_stats {int /*<<< orphan*/  priv; int /*<<< orphan*/  (* skb_dtor ) (int /*<<< orphan*/ ,struct sk_buff*,struct cw1200_txpriv*) ;} ;
struct cw1200_queue_item {size_t generation; int /*<<< orphan*/  head; struct sk_buff* skb; struct cw1200_txpriv txpriv; } ;
struct cw1200_queue {size_t queue_id; size_t generation; int capacity; int num_queued; int overfull; int /*<<< orphan*/  lock; int /*<<< orphan*/  free_pool; int /*<<< orphan*/  num_sent; int /*<<< orphan*/  num_pending; struct cw1200_queue_item* pool; struct cw1200_queue_stats* stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*,size_t*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sk_buff*,struct cw1200_txpriv*) ; 

int FUNC8(struct cw1200_queue *queue, u32 packet_id)
{
	int ret = 0;
	u8 queue_generation, queue_id, item_generation, item_id;
	struct cw1200_queue_item *item;
	struct cw1200_queue_stats *stats = queue->stats;
	struct sk_buff *gc_skb = NULL;
	struct cw1200_txpriv gc_txpriv;

	FUNC3(packet_id, &queue_generation, &queue_id,
			      &item_generation, &item_id);

	item = &queue->pool[item_id];

	FUNC5(&queue->lock);
	FUNC0(queue_id != queue->queue_id);
	if (queue_generation != queue->generation) {
		ret = -ENOENT;
	} else if (item_id >= (unsigned) queue->capacity) {
		FUNC1(1);
		ret = -EINVAL;
	} else if (item->generation != item_generation) {
		FUNC1(1);
		ret = -ENOENT;
	} else {
		gc_txpriv = item->txpriv;
		gc_skb = item->skb;
		item->skb = NULL;
		--queue->num_pending;
		--queue->num_queued;
		++queue->num_sent;
		++item->generation;
		/* Do not use list_move_tail here, but list_move:
		 * try to utilize cache row.
		 */
		FUNC4(&item->head, &queue->free_pool);

		if (queue->overfull &&
		    (queue->num_queued <= (queue->capacity >> 1))) {
			queue->overfull = false;
			FUNC2(queue);
		}
	}
	FUNC6(&queue->lock);

	if (gc_skb)
		stats->skb_dtor(stats->priv, gc_skb, &gc_txpriv);

	return ret;
}