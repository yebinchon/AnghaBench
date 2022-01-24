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
struct TYPE_2__ {int /*<<< orphan*/  sta_hlid_map; } ;
struct wl12xx_vif {TYPE_1__ ap; } ;
struct wl1271_station {int hlid; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; scalar_t__ aid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1271*,struct wl12xx_vif*,int) ; 
 int FUNC4 (struct wl1271*,struct wl12xx_vif*,int) ; 

__attribute__((used)) static int FUNC5(struct wl1271 *wl,
			     struct wl12xx_vif *wlvif,
			     struct ieee80211_sta *sta)
{
	struct wl1271_station *wl_sta;
	int ret = 0, id;

	FUNC2(DEBUG_MAC80211, "mac80211 remove sta %d", (int)sta->aid);

	wl_sta = (struct wl1271_station *)sta->drv_priv;
	id = wl_sta->hlid;
	if (FUNC0(!FUNC1(id, wlvif->ap.sta_hlid_map)))
		return -EINVAL;

	ret = FUNC4(wl, wlvif, wl_sta->hlid);
	if (ret < 0)
		return ret;

	FUNC3(wl, wlvif, wl_sta->hlid);
	return ret;
}