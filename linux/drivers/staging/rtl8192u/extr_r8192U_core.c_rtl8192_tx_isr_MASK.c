#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct urb {scalar_t__ status; scalar_t__ context; } ;
struct sk_buff {scalar_t__ len; scalar_t__ cb; } ;
struct TYPE_6__ {int /*<<< orphan*/  txbytesunicast; int /*<<< orphan*/  txoktotal; } ;
struct r8192_priv {TYPE_4__* ieee80211; int /*<<< orphan*/ * tx_pending; TYPE_2__ stats; } ;
struct net_device {int dummy; } ;
struct cb_desc {size_t queue_index; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_5__ {int /*<<< orphan*/  NumTxOkInPeriod; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* softmac_hard_start_xmit ) (struct sk_buff*,struct net_device*) ;int /*<<< orphan*/ * skb_waitQ; int /*<<< orphan*/  queue_stop; TYPE_3__ stats; scalar_t__ tx_headroom; TYPE_1__ LinkDetectInfo; } ;

/* Variables and functions */
 size_t BEACON_QUEUE ; 
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 scalar_t__ TXCMD_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct r8192_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 

__attribute__((used)) static void FUNC8(struct urb *tx_urb)
{
	struct sk_buff *skb = (struct sk_buff *)tx_urb->context;
	struct net_device *dev;
	struct r8192_priv *priv = NULL;
	struct cb_desc *tcb_desc;
	u8  queue_index;

	if (!skb)
		return;

	dev = *(struct net_device **)(skb->cb);
	tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
	queue_index = tcb_desc->queue_index;

	priv = FUNC2(dev);

	if (tcb_desc->queue_index != TXCMD_QUEUE) {
		if (tx_urb->status == 0) {
			FUNC3(dev);
			priv->stats.txoktotal++;
			priv->ieee80211->LinkDetectInfo.NumTxOkInPeriod++;
			priv->stats.txbytesunicast +=
				(skb->len - priv->ieee80211->tx_headroom);
		} else {
			priv->ieee80211->stats.tx_errors++;
			/* TODO */
		}
	}

	/* free skb and tx_urb */
	FUNC1(skb);
	FUNC7(tx_urb);
	FUNC0(&priv->tx_pending[queue_index]);

	/*
	 * Handle HW Beacon:
	 * We had transfer our beacon frame to host controller at this moment.
	 *
	 *
	 * Caution:
	 * Handling the wait queue of command packets.
	 * For Tx command packets, we must not do TCB fragment because it is
	 * not handled right now. We must cut the packets to match the size of
	 * TX_CMD_PKT before we send it.
	 */

	/* Handle MPDU in wait queue. */
	if (queue_index != BEACON_QUEUE) {
		/* Don't send data frame during scanning.*/
		if ((FUNC5(&priv->ieee80211->skb_waitQ[queue_index]) != 0) &&
		    (!(priv->ieee80211->queue_stop))) {
			skb = FUNC4(&(priv->ieee80211->skb_waitQ[queue_index]));
			if (skb)
				priv->ieee80211->softmac_hard_start_xmit(skb,
									 dev);

			return; /* avoid further processing AMSDU */
		}
	}
}