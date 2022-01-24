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
struct wl1271 {int /*<<< orphan*/  hw; scalar_t__ roc_vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(struct wl1271 *wl)
{
	FUNC1(DEBUG_EVENT, "REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID");
	if (wl->roc_vif)
		FUNC0(wl->hw);
}