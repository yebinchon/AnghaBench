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
struct sk_buff {unsigned int data; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;
struct TYPE_2__ {unsigned int gso_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETIF_F_SG ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

netdev_features_t FUNC7(struct sk_buff *skb,
				      struct net_device *dev,
				      netdev_features_t features)
{
	/* GSO segmentation builds skbs with
	 *	a (small) linear part for the headers, and
	 *	page frags for the data.
	 * Compared to a linear skb, the header-only part consumes an
	 * additional buffer element. This reduces buffer utilization, and
	 * hurts throughput. So compress small segments into one element.
	 */
	if (FUNC2(skb, features)) {
		/* match skb_segment(): */
		unsigned int doffset = skb->data - FUNC4(skb);
		unsigned int hsize = FUNC5(skb)->gso_size;
		unsigned int hroom = FUNC3(skb);

		/* linearize only if resulting skb allocations are order-0: */
		if (FUNC0(hroom + doffset + hsize) <= FUNC1(0))
			features &= ~NETIF_F_SG;
	}

	return FUNC6(skb, features);
}