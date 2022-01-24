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
struct wl1251 {int tx_queue_stopped; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  tx_work; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {struct wl1251* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TX ; 
 scalar_t__ WL1251_TX_QUEUE_HIGH_WATERMARK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
			 struct ieee80211_tx_control *control,
			 struct sk_buff *skb)
{
	struct wl1251 *wl = hw->priv;
	unsigned long flags;

	FUNC3(&wl->tx_queue, skb);

	/*
	 * The chip specific setup must run before the first TX packet -
	 * before that, the tx_work will not be initialized!
	 */

	FUNC0(wl->hw, &wl->tx_work);

	/*
	 * The workqueue is slow to process the tx_queue and we need stop
	 * the queue here, otherwise the queue will get too long.
	 */
	if (FUNC2(&wl->tx_queue) >= WL1251_TX_QUEUE_HIGH_WATERMARK) {
		FUNC6(DEBUG_TX, "op_tx: tx_queue full, stop queues");

		FUNC4(&wl->wl_lock, flags);
		FUNC1(wl->hw);
		wl->tx_queue_stopped = true;
		FUNC5(&wl->wl_lock, flags);
	}
}