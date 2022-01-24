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
typedef  size_t u8 ;
struct wl1271_link {TYPE_3__* wlvif; int /*<<< orphan*/ * tx_queue; } ;
struct wl1271 {int* tx_queue_count; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  hw; struct wl1271_link* links; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ status; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int* tx_queue_count; } ;
struct TYPE_4__ {int idx; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_TX_FILTERED ; 
 int NUM_TX_QUEUES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1271*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct wl1271 *wl, u8 hlid)
{
	int i;
	struct sk_buff *skb;
	struct ieee80211_tx_info *info;
	unsigned long flags;
	int filtered[NUM_TX_QUEUES];
	struct wl1271_link *lnk = &wl->links[hlid];

	/* filter all frames currently in the low level queues for this hlid */
	for (i = 0; i < NUM_TX_QUEUES; i++) {
		filtered[i] = 0;
		while ((skb = FUNC3(&lnk->tx_queue[i]))) {
			filtered[i]++;

			if (FUNC1(FUNC7(wl, skb)))
				continue;

			info = FUNC0(skb);
			info->flags |= IEEE80211_TX_STAT_TX_FILTERED;
			info->status.rates[0].idx = -1;
			FUNC2(wl->hw, skb);
		}
	}

	FUNC4(&wl->wl_lock, flags);
	for (i = 0; i < NUM_TX_QUEUES; i++) {
		wl->tx_queue_count[i] -= filtered[i];
		if (lnk->wlvif)
			lnk->wlvif->tx_queue_count[i] -= filtered[i];
	}
	FUNC5(&wl->wl_lock, flags);

	FUNC6(wl);
}