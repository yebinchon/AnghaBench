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
struct wl12xx_vif {int /*<<< orphan*/  flags; int /*<<< orphan*/  role_id; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct cfg80211_chan_def {int dummy; } ;
struct ieee80211_channel_switch {int block_tx; int /*<<< orphan*/  count; struct cfg80211_chan_def chandef; } ;
struct TYPE_2__ {int (* channel_switch ) (struct wl1271*,struct wl12xx_vif*,struct ieee80211_channel_switch*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EBUSY ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  WLVIF_FLAG_CS_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct wl1271*,struct wl12xx_vif*,struct ieee80211_channel_switch*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 struct wl12xx_vif* FUNC11 (struct ieee80211_vif*) ; 
 int FUNC12 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ieee80211_hw *hw,
					    struct ieee80211_vif *vif,
					    struct cfg80211_chan_def *chandef)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC11(vif);
	struct ieee80211_channel_switch ch_switch = {
		.block_tx = true,
		.chandef = *chandef,
	};
	int ret;

	FUNC9(DEBUG_MAC80211,
		     "mac80211 channel switch beacon (role %d)",
		     wlvif->role_id);

	ret = FUNC12(wl, wlvif, &ch_switch.count);
	if (ret < 0) {
		FUNC10("error getting beacon (for CSA counter)");
		return;
	}

	FUNC0(&wl->mutex);

	if (FUNC8(wl->state != WLCORE_STATE_ON)) {
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC2(wl->dev);
	if (ret < 0) {
		FUNC5(wl->dev);
		goto out;
	}

	ret = wl->ops->channel_switch(wl, wlvif, &ch_switch);
	if (ret)
		goto out_sleep;

	FUNC6(WLVIF_FLAG_CS_PROGRESS, &wlvif->flags);

out_sleep:
	FUNC3(wl->dev);
	FUNC4(wl->dev);
out:
	FUNC1(&wl->mutex);
}