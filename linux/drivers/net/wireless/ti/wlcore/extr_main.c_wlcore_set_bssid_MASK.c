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
typedef  scalar_t__ u32 ;
struct wl12xx_vif {int /*<<< orphan*/  flags; int /*<<< orphan*/  band; void* rate_set; void* basic_rate_set; int /*<<< orphan*/  basic_rate; int /*<<< orphan*/  beacon_int; } ;
struct wl1271 {TYPE_1__* ops; struct wl12xx_vif* sched_vif; } ;
struct ieee80211_bss_conf {scalar_t__ basic_rates; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  aid; int /*<<< orphan*/  bssid; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sched_scan_stop ) (struct wl1271*,struct wl12xx_vif*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  WLVIF_FLAG_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC2 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 void* FUNC5 (struct wl1271*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*,void*) ; 
 int FUNC7 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*,struct wl12xx_vif*) ; 

__attribute__((used)) static int FUNC10(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			    struct ieee80211_bss_conf *bss_conf,
			    u32 sta_rate_set)
{
	u32 rates;
	int ret;

	FUNC4(DEBUG_MAC80211,
	     "changed_bssid: %pM, aid: %d, bcn_int: %d, brates: 0x%x sta_rate_set: 0x%x",
	     bss_conf->bssid, bss_conf->aid,
	     bss_conf->beacon_int,
	     bss_conf->basic_rates, sta_rate_set);

	wlvif->beacon_int = bss_conf->beacon_int;
	rates = bss_conf->basic_rates;
	wlvif->basic_rate_set =
		FUNC5(wl, rates,
					    wlvif->band);
	wlvif->basic_rate =
		FUNC6(wl,
				       wlvif->basic_rate_set);

	if (sta_rate_set)
		wlvif->rate_set =
			FUNC5(wl,
						sta_rate_set,
						wlvif->band);

	/* we only support sched_scan while not connected */
	if (wl->sched_vif == wlvif)
		wl->ops->sched_scan_stop(wl, wlvif);

	ret = FUNC2(wl, wlvif);
	if (ret < 0)
		return ret;

	ret = FUNC7(wl, wlvif);
	if (ret < 0)
		return ret;

	ret = FUNC3(wl, FUNC8(wlvif));
	if (ret < 0)
		return ret;

	FUNC9(wl, wlvif);

	FUNC0(WLVIF_FLAG_IN_USE, &wlvif->flags);

	return 0;
}