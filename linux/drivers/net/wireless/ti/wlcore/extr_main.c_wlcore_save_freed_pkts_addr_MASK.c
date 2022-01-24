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
typedef  scalar_t__ u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ WL12XX_INVALID_LINK_ID ; 
 struct ieee80211_sta* FUNC1 (struct ieee80211_vif*,scalar_t__ const*) ; 
 scalar_t__ FUNC2 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct ieee80211_vif* FUNC5 (struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*,struct wl12xx_vif*,scalar_t__,struct ieee80211_sta*) ; 

__attribute__((used)) static void FUNC7(struct wl1271 *wl,
					struct wl12xx_vif *wlvif,
					u8 hlid, const u8 *addr)
{
	struct ieee80211_sta *sta;
	struct ieee80211_vif *vif = FUNC5(wlvif);

	if (FUNC0(hlid == WL12XX_INVALID_LINK_ID ||
		    FUNC2(addr)))
		return;

	FUNC3();
	sta = FUNC1(vif, addr);
	if (sta)
		FUNC6(wl, wlvif, hlid, sta);
	FUNC4();
}