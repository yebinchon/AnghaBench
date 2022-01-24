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
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_fifo_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  ch_id; } ;
struct net_dev_context {scalar_t__ is_mamac; TYPE_1__ tx; int /*<<< orphan*/  iface; } ;
struct mbo {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  comp ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct mbo* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbo*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbo*) ; 
 struct net_dev_context* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct sk_buff*,struct mbo*) ; 
 int FUNC7 (struct sk_buff*,struct mbo*) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb,
				      struct net_device *dev)
{
	struct net_dev_context *nd = FUNC4(dev);
	struct mbo *mbo;
	int ret;

	mbo = FUNC1(nd->iface, nd->tx.ch_id, &comp);

	if (!mbo) {
		FUNC5(dev);
		dev->stats.tx_fifo_errors++;
		return NETDEV_TX_BUSY;
	}

	if (nd->is_mamac)
		ret = FUNC6(skb, mbo);
	else
		ret = FUNC7(skb, mbo);

	if (ret) {
		FUNC2(mbo);
		dev->stats.tx_dropped++;
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	FUNC3(mbo);
	dev->stats.tx_packets++;
	dev->stats.tx_bytes += skb->len;
	FUNC0(skb);
	return NETDEV_TX_OK;
}