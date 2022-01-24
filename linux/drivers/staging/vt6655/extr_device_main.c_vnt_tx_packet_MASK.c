#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;
struct TYPE_4__ {int tcr; int /*<<< orphan*/  req_count; } ;
struct vnt_tx_desc {TYPE_3__* td_info; TYPE_2__ td0; int /*<<< orphan*/  buff_addr; TYPE_1__ td1; struct vnt_tx_desc* next; } ;
struct vnt_private {int bPWBitOn; int /*<<< orphan*/  lock; int /*<<< orphan*/ * iTDUsed; int /*<<< orphan*/  PortOffset; struct vnt_tx_desc** apCurrTD; int /*<<< orphan*/  hw; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  buf_dma; int /*<<< orphan*/  req_count; struct sk_buff* skb; } ;

/* Variables and functions */
 int FUNC0 (struct vnt_private*,size_t) ; 
 int EDMSDU ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OWNED_BY_NIC ; 
 int TCR_EDP ; 
 int TCR_STP ; 
 int TD_FLAGS_NETIF_SKB ; 
 size_t TYPE_AC0DMA ; 
 size_t TYPE_TXDMA0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct vnt_private*,size_t,struct vnt_tx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct vnt_private *priv, struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct vnt_tx_desc *head_td;
	u32 dma_idx;
	unsigned long flags;

	FUNC7(&priv->lock, flags);

	if (FUNC5(hdr->frame_control))
		dma_idx = TYPE_AC0DMA;
	else
		dma_idx = TYPE_TXDMA0;

	if (FUNC0(priv, dma_idx) < 1) {
		FUNC8(&priv->lock, flags);
		FUNC6(priv->hw);
		return -ENOMEM;
	}

	head_td = priv->apCurrTD[dma_idx];

	head_td->td1.tcr = 0;

	head_td->td_info->skb = skb;

	if (dma_idx == TYPE_AC0DMA)
		head_td->td_info->flags = TD_FLAGS_NETIF_SKB;

	priv->apCurrTD[dma_idx] = head_td->next;

	FUNC8(&priv->lock, flags);

	FUNC9(priv, dma_idx, head_td, skb);

	FUNC7(&priv->lock, flags);

	priv->bPWBitOn = false;

	/* Set TSR1 & ReqCount in TxDescHead */
	head_td->td1.tcr |= (TCR_STP | TCR_EDP | EDMSDU);
	head_td->td1.req_count = FUNC3(head_td->td_info->req_count);

	head_td->buff_addr = FUNC4(head_td->td_info->buf_dma);

	/* Poll Transmit the adapter */
	FUNC10();
	head_td->td0.owner = OWNED_BY_NIC;
	FUNC10(); /* second memory barrier */

	if (head_td->td_info->flags & TD_FLAGS_NETIF_SKB)
		FUNC2(priv->PortOffset);
	else
		FUNC1(priv->PortOffset);

	priv->iTDUsed[dma_idx]++;

	FUNC8(&priv->lock, flags);

	return 0;
}