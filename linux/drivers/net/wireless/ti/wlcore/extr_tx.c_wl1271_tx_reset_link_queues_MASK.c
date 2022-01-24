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
struct ieee80211_tx_info {TYPE_2__ status; } ;
struct TYPE_6__ {int* tx_queue_count; } ;
struct TYPE_4__ {int idx; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TX ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int NUM_TX_QUEUES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1271*,struct sk_buff*) ; 

void FUNC8(struct wl1271 *wl, u8 hlid)
{
	struct sk_buff *skb;
	int i;
	unsigned long flags;
	struct ieee80211_tx_info *info;
	int total[NUM_TX_QUEUES];
	struct wl1271_link *lnk = &wl->links[hlid];

	for (i = 0; i < NUM_TX_QUEUES; i++) {
		total[i] = 0;
		while ((skb = FUNC2(&lnk->tx_queue[i]))) {
			FUNC5(DEBUG_TX, "link freeing skb 0x%p", skb);

			if (!FUNC7(wl, skb)) {
				info = FUNC0(skb);
				info->status.rates[0].idx = -1;
				info->status.rates[0].count = 0;
				FUNC1(wl->hw, skb);
			}

			total[i]++;
		}
	}

	FUNC3(&wl->wl_lock, flags);
	for (i = 0; i < NUM_TX_QUEUES; i++) {
		wl->tx_queue_count[i] -= total[i];
		if (lnk->wlvif)
			lnk->wlvif->tx_queue_count[i] -= total[i];
	}
	FUNC4(&wl->wl_lock, flags);

	FUNC6(wl);
}