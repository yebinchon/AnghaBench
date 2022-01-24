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
struct wl1271 {int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  hw; int /*<<< orphan*/ * queue_stop_reasons; } ;
typedef  enum wlcore_queue_stop_reason { ____Placeholder_wlcore_queue_stop_reason } wlcore_queue_stop_reason ;

/* Variables and functions */
 int NUM_TX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int WLCORE_NUM_MAC_ADDRESSES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

void FUNC5(struct wl1271 *wl,
			enum wlcore_queue_stop_reason reason)
{
	int i;
	unsigned long flags;

	FUNC2(&wl->wl_lock, flags);

	/* mark all possible queues as stopped */
        for (i = 0; i < WLCORE_NUM_MAC_ADDRESSES * NUM_TX_QUEUES; i++)
                FUNC0(FUNC4(reason,
					      &wl->queue_stop_reasons[i]));

	/* use the global version to make sure all vifs in mac80211 we don't
	 * know are stopped.
	 */
	FUNC1(wl->hw);

	FUNC3(&wl->wl_lock, flags);
}