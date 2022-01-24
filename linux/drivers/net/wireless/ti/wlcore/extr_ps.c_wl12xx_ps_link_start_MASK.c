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
struct TYPE_3__ {int /*<<< orphan*/ * sta_hlid_map; } ;
struct wl12xx_vif {scalar_t__ bss_type; TYPE_1__ ap; } ;
struct wl1271 {int /*<<< orphan*/  ap_ps_map; TYPE_2__* links; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  allocated_pkts; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_AP_BSS ; 
 int /*<<< orphan*/  DEBUG_PSM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC2 (struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*,size_t) ; 
 struct ieee80211_vif* FUNC10 (struct wl12xx_vif*) ; 

void FUNC11(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			  u8 hlid, bool clean_queues)
{
	struct ieee80211_sta *sta;
	struct ieee80211_vif *vif = FUNC10(wlvif);

	if (FUNC0(wlvif->bss_type != BSS_TYPE_AP_BSS))
		return;

	if (!FUNC6(hlid, wlvif->ap.sta_hlid_map) ||
	    FUNC6(hlid, &wl->ap_ps_map))
		return;

	FUNC7(DEBUG_PSM, "start mac80211 PSM on hlid %d pkts %d "
		     "clean_queues %d", hlid, wl->links[hlid].allocated_pkts,
		     clean_queues);

	FUNC4();
	sta = FUNC2(vif, wl->links[hlid].addr);
	if (!sta) {
		FUNC8("could not find sta %pM for starting ps",
			     wl->links[hlid].addr);
		FUNC5();
		return;
	}

	FUNC3(sta, true);
	FUNC5();

	/* do we want to filter all frames from this link's queues? */
	if (clean_queues)
		FUNC9(wl, hlid);

	FUNC1(hlid, &wl->ap_ps_map);
}