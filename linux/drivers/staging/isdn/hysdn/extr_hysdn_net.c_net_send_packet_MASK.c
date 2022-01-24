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
struct sk_buff {int dummy; } ;
struct net_local {scalar_t__ in_idx; scalar_t__ sk_count; int /*<<< orphan*/  lock; struct sk_buff** skbs; } ;
struct net_device {scalar_t__ ml_priv; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  irq_queue; } ;
typedef  TYPE_1__ hysdn_card ;

/* Variables and functions */
 scalar_t__ MAX_SKB_BUFFERS ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t
FUNC5(struct sk_buff *skb, struct net_device *dev)
{
	struct net_local *lp = (struct net_local *) dev;

	FUNC3(&lp->lock);

	lp->skbs[lp->in_idx++] = skb;	/* add to buffer list */
	if (lp->in_idx >= MAX_SKB_BUFFERS)
		lp->in_idx = 0;	/* wrap around */
	lp->sk_count++;		/* adjust counter */
	FUNC1(dev);

	/* If we just used up the very last entry in the
	 * TX ring on this device, tell the queueing
	 * layer to send no more.
	 */
	if (lp->sk_count >= MAX_SKB_BUFFERS)
		FUNC0(dev);

	/* When the TX completion hw interrupt arrives, this
	 * is when the transmit statistics are updated.
	 */

	FUNC4(&lp->lock);

	if (lp->sk_count <= 3) {
		FUNC2(&((hysdn_card *) dev->ml_priv)->irq_queue);
	}
	return NETDEV_TX_OK;	/* success */
}