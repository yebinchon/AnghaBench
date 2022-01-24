#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {struct sk_buff* next; } ;
struct octeon_ethernet {TYPE_1__* tx_free_list; scalar_t__ fau; int /*<<< orphan*/  port; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int MAX_OUT_QUEUE_DEPTH ; 
 int /*<<< orphan*/  MAX_SKB_TO_FREE ; 
 struct sk_buff* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct octeon_ethernet* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
	int skb_to_free;
	int qos, queues_per_port;
	int total_freed = 0;
	int total_remaining = 0;
	unsigned long flags;
	struct octeon_ethernet *priv = FUNC6(dev);

	queues_per_port = FUNC4(priv->port);
	/* Drain any pending packets in the free list */
	for (qos = 0; qos < queues_per_port; qos++) {
		if (FUNC9(&priv->tx_free_list[qos]) == 0)
			continue;
		skb_to_free = FUNC3(priv->fau + qos * 4,
						       MAX_SKB_TO_FREE);
		skb_to_free = FUNC1(skb_to_free,
							 priv->fau + qos * 4);
		total_freed += skb_to_free;
		if (skb_to_free > 0) {
			struct sk_buff *to_free_list = NULL;

			FUNC10(&priv->tx_free_list[qos].lock, flags);
			while (skb_to_free > 0) {
				struct sk_buff *t;

				t = FUNC0(&priv->tx_free_list[qos]);
				t->next = to_free_list;
				to_free_list = t;
				skb_to_free--;
			}
			FUNC11(&priv->tx_free_list[qos].lock,
					       flags);
			/* Do the actual freeing outside of the lock. */
			while (to_free_list) {
				struct sk_buff *t = to_free_list;

				to_free_list = to_free_list->next;
				FUNC5(t);
			}
		}
		total_remaining += FUNC9(&priv->tx_free_list[qos]);
	}
	if (total_remaining < MAX_OUT_QUEUE_DEPTH && FUNC7(dev))
		FUNC8(dev);
	if (total_remaining)
		FUNC2();
}