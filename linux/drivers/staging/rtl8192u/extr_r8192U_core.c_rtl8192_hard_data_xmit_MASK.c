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
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ cb; } ;
struct r8192_priv {int /*<<< orphan*/  tx_lock; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct cb_desc {scalar_t__ queue_index; int bTxEnableFwCalcDur; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_headroom; } ;

/* Variables and functions */
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TXCMD_QUEUE ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb, struct net_device *dev,
				   int rate)
{
	struct r8192_priv *priv = (struct r8192_priv *)FUNC1(dev);
	int ret;
	unsigned long flags;
	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
	u8 queue_index = tcb_desc->queue_index;

	/* shall not be referred by command packet */
	FUNC0(queue_index != TXCMD_QUEUE);

	FUNC4(&priv->tx_lock, flags);

	*(struct net_device **)(skb->cb) = dev;
	tcb_desc->bTxEnableFwCalcDur = 1;
	FUNC3(skb, priv->ieee80211->tx_headroom);
	ret = FUNC2(dev, skb);

	FUNC5(&priv->tx_lock, flags);
}