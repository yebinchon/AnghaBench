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
typedef  int /*<<< orphan*/  u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int /*<<< orphan*/  hw; int /*<<< orphan*/ * queue_stop_reasons; } ;
typedef  enum wlcore_queue_stop_reason { ____Placeholder_wlcore_queue_stop_reason } wlcore_queue_stop_reason ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wl12xx_vif*,int /*<<< orphan*/ ) ; 

void FUNC4(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			      u8 queue, enum wlcore_queue_stop_reason reason)
{
	int hwq = FUNC3(wlvif, queue);
	bool stopped = !!wl->queue_stop_reasons[hwq];

	/* queue should not be stopped for this reason */
	FUNC0(FUNC2(reason, &wl->queue_stop_reasons[hwq]));

	if (stopped)
		return;

	FUNC1(wl->hw, hwq);
}