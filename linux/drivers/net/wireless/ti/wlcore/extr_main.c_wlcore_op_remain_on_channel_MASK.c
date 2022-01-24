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
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  roc_complete_work; struct ieee80211_vif* roc_vif; int /*<<< orphan*/  roc_map; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct ieee80211_channel {int /*<<< orphan*/  band; int /*<<< orphan*/  center_freq; } ;
typedef  enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EBUSY ; 
 int WL12XX_MAX_ROLES ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int FUNC13 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ,int) ; 
 struct wl12xx_vif* FUNC14 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC15(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif,
				       struct ieee80211_channel *chan,
				       int duration,
				       enum ieee80211_roc_type type)
{
	struct wl12xx_vif *wlvif = FUNC14(vif);
	struct wl1271 *wl = hw->priv;
	int channel, active_roc, ret = 0;

	channel = FUNC1(chan->center_freq);

	FUNC11(DEBUG_MAC80211, "mac80211 roc %d (%d)",
		     channel, wlvif->role_id);

	FUNC4(&wl->mutex);

	if (FUNC10(wl->state != WLCORE_STATE_ON))
		goto out;

	/* return EBUSY if we can't ROC right now */
	active_roc = FUNC0(wl->roc_map, WL12XX_MAX_ROLES);
	if (wl->roc_vif || active_roc < WL12XX_MAX_ROLES) {
		FUNC12("active roc on role %d", active_roc);
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC6(wl->dev);
	if (ret < 0) {
		FUNC9(wl->dev);
		goto out;
	}

	ret = FUNC13(wl, wlvif, chan->band, channel);
	if (ret < 0)
		goto out_sleep;

	wl->roc_vif = vif;
	FUNC2(hw, &wl->roc_complete_work,
				     FUNC3(duration));
out_sleep:
	FUNC7(wl->dev);
	FUNC8(wl->dev);
out:
	FUNC5(&wl->mutex);
	return ret;
}