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
struct wl12xx_vif {int dummy; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct station_info {int /*<<< orphan*/  signal; int /*<<< orphan*/  filled; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  NL80211_STA_INFO_SIGNAL ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 struct wl12xx_vif* FUNC9 (struct ieee80211_vif*) ; 
 int FUNC10 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *hw,
				     struct ieee80211_vif *vif,
				     struct ieee80211_sta *sta,
				     struct station_info *sinfo)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC9(vif);
	s8 rssi_dbm;
	int ret;

	FUNC8(DEBUG_MAC80211, "mac80211 get_rssi");

	FUNC1(&wl->mutex);

	if (FUNC7(wl->state != WLCORE_STATE_ON))
		goto out;

	ret = FUNC3(wl->dev);
	if (ret < 0) {
		FUNC6(wl->dev);
		goto out_sleep;
	}

	ret = FUNC10(wl, wlvif, &rssi_dbm);
	if (ret < 0)
		goto out_sleep;

	sinfo->filled |= FUNC0(NL80211_STA_INFO_SIGNAL);
	sinfo->signal = rssi_dbm;

out_sleep:
	FUNC4(wl->dev);
	FUNC5(wl->dev);

out:
	FUNC2(&wl->mutex);
}