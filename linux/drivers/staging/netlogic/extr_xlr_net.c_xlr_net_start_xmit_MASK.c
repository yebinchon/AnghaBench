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
typedef  int /*<<< orphan*/  u32 ;
struct xlr_net_priv {int /*<<< orphan*/  tx_stnid; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct nlm_fmn_msg {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct xlr_net_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlm_fmn_msg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nlm_fmn_msg*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb,
				      struct net_device *ndev)
{
	struct nlm_fmn_msg msg;
	struct xlr_net_priv *priv = FUNC1(ndev);
	int ret;
	u32 flags;

	FUNC6(&msg, FUNC5(skb->data), skb);
	flags = FUNC3();
	ret = FUNC4(2, 0, priv->tx_stnid, &msg);
	FUNC2(flags);
	if (ret)
		FUNC0(skb);
	return NETDEV_TX_OK;
}