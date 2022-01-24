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
struct r8192_priv {TYPE_1__* rtllib; scalar_t__ bResetInProgress; int /*<<< orphan*/  up; } ;
struct net_device {int dummy; } ;
struct cb_desc {scalar_t__ queue_index; int RATRIndex; int bTxDisableRateFallBack; int bTxUseDriverAssingedRate; int bTxEnableFwCalcDur; } ;
typedef  int /*<<< orphan*/  dev ;
struct TYPE_2__ {scalar_t__ eRFPowerState; int /*<<< orphan*/  tx_headroom; } ;

/* Variables and functions */
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 scalar_t__ TXCMD_QUEUE ; 
 int FUNC0 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct sk_buff*) ; 
 scalar_t__ eRfOff ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,struct net_device**,int) ; 
 struct r8192_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct net_device *dev)
{
	struct r8192_priv *priv = FUNC4(dev);
	int ret;
	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb +
				    MAX_DEV_ADDR_SIZE);
	u8 queue_index = tcb_desc->queue_index;

	if (queue_index != TXCMD_QUEUE) {
		if ((priv->rtllib->eRFPowerState == eRfOff) ||
		     !priv->up || priv->bResetInProgress) {
			FUNC2(skb);
			return 0;
		}
	}

	FUNC3((unsigned char *)(skb->cb), &dev, sizeof(dev));
	if (queue_index == TXCMD_QUEUE) {
		FUNC1(dev, skb);
		return 0;
	}

	tcb_desc->RATRIndex = 7;
	tcb_desc->bTxDisableRateFallBack = 1;
	tcb_desc->bTxUseDriverAssingedRate = 1;
	tcb_desc->bTxEnableFwCalcDur = 1;
	FUNC5(skb, priv->rtllib->tx_headroom);
	ret = FUNC0(dev, skb);
	if (ret != 0)
		FUNC2(skb);
	return ret;
}