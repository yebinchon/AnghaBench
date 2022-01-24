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
struct wl12xx_vif {int dummy; } ;
struct wl1271 {TYPE_1__* links; int /*<<< orphan*/  ap_ps_map; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_PSM ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC1 (struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 struct ieee80211_vif* FUNC8 (struct wl12xx_vif*) ; 

void FUNC9(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 hlid)
{
	struct ieee80211_sta *sta;
	struct ieee80211_vif *vif = FUNC8(wlvif);

	if (!FUNC5(hlid, &wl->ap_ps_map))
		return;

	FUNC6(DEBUG_PSM, "end mac80211 PSM on hlid %d", hlid);

	FUNC0(hlid, &wl->ap_ps_map);

	FUNC3();
	sta = FUNC1(vif, wl->links[hlid].addr);
	if (!sta) {
		FUNC7("could not find sta %pM for ending ps",
			     wl->links[hlid].addr);
		goto end;
	}

	FUNC2(sta, false);
end:
	FUNC4();
}