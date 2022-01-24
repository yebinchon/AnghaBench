#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wl1271_tx_hw_descr {int /*<<< orphan*/  hlid; } ;
struct TYPE_7__ {int /*<<< orphan*/  retry_count; } ;
struct wl1271 {int num_tx_desc; int quirks; int /*<<< orphan*/  netstack_work; int /*<<< orphan*/  freezable_wq; int /*<<< orphan*/  deferred_tx_queue; TYPE_2__ stats; struct sk_buff** tx_frames; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_9__ {TYPE_3__* hw_key; int /*<<< orphan*/  vif; } ;
struct TYPE_6__ {int ack_signal; TYPE_5__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_4__ control; TYPE_1__ status; int /*<<< orphan*/  band; } ;
struct TYPE_10__ {int count; } ;
struct TYPE_8__ {scalar_t__ cipher; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG_TX ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_STAT_ACK ; 
 int WL1271_EXTRA_SPACE_TKIP ; 
 int WL18XX_TX_STATUS_DESC_ID_MASK ; 
 int /*<<< orphan*/  WL18XX_TX_STATUS_STAT_BIT_IDX ; 
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ; 
 int WLCORE_QUIRK_TKIP_HEADER_SPACE ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 scalar_t__ FUNC11 (struct wl1271*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct wl1271 *wl, u8 tx_stat_byte)
{
	struct ieee80211_tx_info *info;
	struct sk_buff *skb;
	int id = tx_stat_byte & WL18XX_TX_STATUS_DESC_ID_MASK;
	bool tx_success;
	struct wl1271_tx_hw_descr *tx_desc;

	/* check for id legality */
	if (FUNC7(id >= wl->num_tx_desc || wl->tx_frames[id] == NULL)) {
		FUNC10("illegal id in tx completion: %d", id);
		return;
	}

	/* a zero bit indicates Tx success */
	tx_success = !(tx_stat_byte & FUNC0(WL18XX_TX_STATUS_STAT_BIT_IDX));

	skb = wl->tx_frames[id];
	info = FUNC1(skb);
	tx_desc = (struct wl1271_tx_hw_descr *)skb->data;

	if (FUNC11(wl, skb)) {
		FUNC9(wl, id);
		return;
	}

	/* update the TX status info */
	if (tx_success && !(info->flags & IEEE80211_TX_CTL_NO_ACK))
		info->flags |= IEEE80211_TX_STAT_ACK;
	/*
	 * first pass info->control.vif while it's valid, and then fill out
	 * the info->status structures
	 */
	FUNC12(wl, info->control.vif,
				info->band,
				&info->status.rates[0],
				tx_desc->hlid);

	info->status.rates[0].count = 1; /* no data about retries */
	info->status.ack_signal = -1;

	if (!tx_success)
		wl->stats.retry_count++;

	/*
	 * TODO: update sequence number for encryption? seems to be
	 * unsupported for now. needed for recovery with encryption.
	 */

	/* remove private header from packet */
	FUNC5(skb, sizeof(struct wl1271_tx_hw_descr));

	/* remove TKIP header space if present */
	if ((wl->quirks & WLCORE_QUIRK_TKIP_HEADER_SPACE) &&
	    info->control.hw_key &&
	    info->control.hw_key->cipher == WLAN_CIPHER_SUITE_TKIP) {
		int hdrlen = FUNC2(skb);
		FUNC3(skb->data + WL1271_EXTRA_SPACE_TKIP, skb->data, hdrlen);
		FUNC5(skb, WL1271_EXTRA_SPACE_TKIP);
	}

	FUNC8(DEBUG_TX, "tx status id %u skb 0x%p success %d",
		     id, skb, tx_success);

	/* return the packet to the stack */
	FUNC6(&wl->deferred_tx_queue, skb);
	FUNC4(wl->freezable_wq, &wl->netstack_work);
	FUNC9(wl, id);
}