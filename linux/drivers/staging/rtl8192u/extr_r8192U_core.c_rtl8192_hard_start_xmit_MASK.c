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
struct cb_desc {scalar_t__ queue_index; } ;
typedef  int /*<<< orphan*/  dev ;
struct TYPE_2__ {int /*<<< orphan*/  tx_headroom; } ;

/* Variables and functions */
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 scalar_t__ TXCMD_QUEUE ; 
 int /*<<< orphan*/  USB_HWDESC_HEADER_LEN ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,struct net_device**,int) ; 
 int FUNC2 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct net_device *dev)
{
	struct r8192_priv *priv = (struct r8192_priv *)FUNC0(dev);
	int ret;
	unsigned long flags;
	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
	u8 queue_index = tcb_desc->queue_index;


	FUNC5(&priv->tx_lock, flags);

	FUNC1((unsigned char *)(skb->cb), &dev, sizeof(dev));
	if (queue_index == TXCMD_QUEUE) {
		FUNC4(skb, USB_HWDESC_HEADER_LEN);
		FUNC3(dev, skb);
		ret = 1;
	} else {
		FUNC4(skb, priv->ieee80211->tx_headroom);
		ret = FUNC2(dev, skb);
	}

	FUNC6(&priv->tx_lock, flags);

	return ret;
}