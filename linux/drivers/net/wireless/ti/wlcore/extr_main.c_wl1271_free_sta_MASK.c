#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_4__ {int /*<<< orphan*/  sta_hlid_map; } ;
struct wl12xx_vif {TYPE_2__ ap; } ;
struct wl1271 {scalar_t__ active_sta_count; TYPE_1__* links; int /*<<< orphan*/  ap_fw_ps_map; int /*<<< orphan*/  ap_ps_map; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1271*,struct wl12xx_vif*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*,struct wl12xx_vif*,size_t,int /*<<< orphan*/ ) ; 

void FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 hlid)
{
	if (!FUNC2(hlid, wlvif->ap.sta_hlid_map))
		return;

	FUNC1(hlid, wlvif->ap.sta_hlid_map);
	FUNC0(hlid, &wl->ap_ps_map);
	FUNC0(hlid, &wl->ap_fw_ps_map);

	/*
	 * save the last used PN in the private part of iee80211_sta,
	 * in case of recovery/suspend
	 */
	FUNC5(wl, wlvif, hlid, wl->links[hlid].addr);

	FUNC3(wl, wlvif, &hlid);
	wl->active_sta_count--;

	/*
	 * rearm the tx watchdog when the last STA is freed - give the FW a
	 * chance to return STA-buffered packets before complaining.
	 */
	if (wl->active_sta_count == 0)
		FUNC4(wl);
}