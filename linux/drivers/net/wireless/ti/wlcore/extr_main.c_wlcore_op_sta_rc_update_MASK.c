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
typedef  int u32 ;
struct wl12xx_vif {int /*<<< orphan*/  rc_update_work; int /*<<< orphan*/  rc_ht_cap; int /*<<< orphan*/  rc_update_bw; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  ht_cap; int /*<<< orphan*/  bandwidth; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int IEEE80211_RC_BW_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct wl12xx_vif* FUNC3 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    struct ieee80211_sta *sta,
				    u32 changed)
{
	struct wl12xx_vif *wlvif = FUNC3(vif);

	FUNC2(DEBUG_MAC80211, "mac80211 sta_rc_update");

	if (!(changed & IEEE80211_RC_BW_CHANGED))
		return;

	/* this callback is atomic, so schedule a new work */
	wlvif->rc_update_bw = sta->bandwidth;
	FUNC1(&wlvif->rc_ht_cap, &sta->ht_cap, sizeof(sta->ht_cap));
	FUNC0(hw, &wlvif->rc_update_work);
}