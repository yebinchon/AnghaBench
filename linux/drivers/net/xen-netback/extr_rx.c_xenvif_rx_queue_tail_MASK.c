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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct xenvif_queue {scalar_t__ rx_queue_len; scalar_t__ rx_queue_max; TYPE_2__ rx_queue; int /*<<< orphan*/  id; TYPE_1__* vif; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct xenvif_queue *queue, struct sk_buff *skb)
{
	unsigned long flags;

	FUNC3(&queue->rx_queue.lock, flags);

	FUNC0(&queue->rx_queue, skb);

	queue->rx_queue_len += skb->len;
	if (queue->rx_queue_len > queue->rx_queue_max) {
		struct net_device *dev = queue->vif->dev;

		FUNC2(FUNC1(dev, queue->id));
	}

	FUNC4(&queue->rx_queue.lock, flags);
}