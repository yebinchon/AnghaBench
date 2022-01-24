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
typedef  int u8 ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl8192_rx_info {int /*<<< orphan*/  urb; } ;
struct r8192_priv {int /*<<< orphan*/  skb_queue; int /*<<< orphan*/  rx_queue; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMDR ; 
 int CR_RE ; 
 int CR_TE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC11(struct net_device *dev)
{
	u8 cmd;
	struct r8192_priv *priv = FUNC2(dev);
	struct sk_buff *skb;
	struct rtl8192_rx_info *info;

	FUNC6(dev, CMDR, &cmd);
	FUNC10(dev, CMDR, cmd & ~(CR_TE | CR_RE));
	FUNC1(dev);
	FUNC4(10);

	while ((skb = FUNC0(&priv->rx_queue))) {
		info = (struct rtl8192_rx_info *)skb->cb;
		if (!info->urb)
			continue;

		FUNC9(info->urb);
		FUNC3(skb);
	}

	if (FUNC7(&priv->skb_queue))
		FUNC5(dev, "skb_queue not empty\n");

	FUNC8(&priv->skb_queue);
}