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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  aid; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
typedef  enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EBUSY ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct wl1271*,struct wl12xx_vif*,struct ieee80211_sta*,int,int) ; 
 struct wl12xx_vif* FUNC9 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC10(struct ieee80211_hw *hw,
			       struct ieee80211_vif *vif,
			       struct ieee80211_sta *sta,
			       enum ieee80211_sta_state old_state,
			       enum ieee80211_sta_state new_state)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC9(vif);
	int ret;

	FUNC7(DEBUG_MAC80211, "mac80211 sta %d state=%d->%d",
		     sta->aid, old_state, new_state);

	FUNC0(&wl->mutex);

	if (FUNC6(wl->state != WLCORE_STATE_ON)) {
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC2(wl->dev);
	if (ret < 0) {
		FUNC5(wl->dev);
		goto out;
	}

	ret = FUNC8(wl, wlvif, sta, old_state, new_state);

	FUNC3(wl->dev);
	FUNC4(wl->dev);
out:
	FUNC1(&wl->mutex);
	if (new_state < old_state)
		return 0;
	return ret;
}