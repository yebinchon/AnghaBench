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
typedef  size_t u8 ;
struct wl1271_link {TYPE_1__* wlvif; int /*<<< orphan*/ * tx_queue; } ;
struct wl1271 {scalar_t__* tx_queue_count; int /*<<< orphan*/  wl_lock; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__* tx_queue_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct wl1271 *wl,
					  struct wl1271_link *lnk, u8 q)
{
	struct sk_buff *skb;
	unsigned long flags;

	skb = FUNC1(&lnk->tx_queue[q]);
	if (skb) {
		FUNC2(&wl->wl_lock, flags);
		FUNC0(wl->tx_queue_count[q] <= 0);
		wl->tx_queue_count[q]--;
		if (lnk->wlvif) {
			FUNC0(lnk->wlvif->tx_queue_count[q] <= 0);
			lnk->wlvif->tx_queue_count[q]--;
		}
		FUNC3(&wl->wl_lock, flags);
	}

	return skb;
}