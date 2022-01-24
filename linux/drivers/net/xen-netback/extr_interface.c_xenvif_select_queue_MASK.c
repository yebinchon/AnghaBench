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
typedef  unsigned int u16 ;
struct TYPE_2__ {unsigned int size; scalar_t__ alg; unsigned int** mapping; size_t mapping_sel; } ;
struct xenvif {TYPE_1__ hash; int /*<<< orphan*/  num_queues; } ;
struct sk_buff {int dummy; } ;
struct net_device {unsigned int real_num_tx_queues; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ XEN_NETIF_CTRL_HASH_ALGORITHM_NONE ; 
 unsigned int FUNC1 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct xenvif* FUNC2 (struct net_device*) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct xenvif*,struct sk_buff*) ; 

__attribute__((used)) static u16 FUNC5(struct net_device *dev, struct sk_buff *skb,
			       struct net_device *sb_dev)
{
	struct xenvif *vif = FUNC2(dev);
	unsigned int size = vif->hash.size;
	unsigned int num_queues;

	/* If queues are not set up internally - always return 0
	 * as the packet going to be dropped anyway */
	num_queues = FUNC0(vif->num_queues);
	if (num_queues < 1)
		return 0;

	if (vif->hash.alg == XEN_NETIF_CTRL_HASH_ALGORITHM_NONE)
		return FUNC1(dev, skb, NULL) %
		       dev->real_num_tx_queues;

	FUNC4(vif, skb);

	if (size == 0)
		return FUNC3(skb) % dev->real_num_tx_queues;

	return vif->hash.mapping[vif->hash.mapping_sel]
				[FUNC3(skb) % size];
}