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
struct wl12xx_vif {int /*<<< orphan*/  channel_switch_work; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  flags; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct ieee80211_channel_switch {unsigned long count; } ;
struct TYPE_2__ {int (* channel_switch ) (struct wl1271*,struct wl12xx_vif*,struct ieee80211_channel_switch*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 scalar_t__ WLCORE_STATE_OFF ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  WLVIF_FLAG_CS_PROGRESS ; 
 int /*<<< orphan*/  WLVIF_FLAG_STA_ASSOCIATED ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_vif*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct wl1271*,struct wl12xx_vif*,struct ieee80211_channel_switch*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct wl1271*) ; 
 struct wl12xx_vif* FUNC17 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC18(struct ieee80211_hw *hw,
				     struct ieee80211_vif *vif,
				     struct ieee80211_channel_switch *ch_switch)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC17(vif);
	int ret;

	FUNC15(DEBUG_MAC80211, "mac80211 channel switch");

	FUNC16(wl);

	FUNC4(&wl->mutex);

	if (FUNC13(wl->state == WLCORE_STATE_OFF)) {
		if (FUNC12(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags))
			FUNC0(vif, false);
		goto out;
	} else if (FUNC13(wl->state != WLCORE_STATE_ON)) {
		goto out;
	}

	ret = FUNC6(wl->dev);
	if (ret < 0) {
		FUNC9(wl->dev);
		goto out;
	}

	/* TODO: change mac80211 to pass vif as param */

	if (FUNC12(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags)) {
		unsigned long delay_usec;

		ret = wl->ops->channel_switch(wl, wlvif, ch_switch);
		if (ret)
			goto out_sleep;

		FUNC10(WLVIF_FLAG_CS_PROGRESS, &wlvif->flags);

		/* indicate failure 5 seconds after channel switch time */
		delay_usec = FUNC2(wlvif->beacon_int) *
			ch_switch->count;
		FUNC1(hw, &wlvif->channel_switch_work,
					     FUNC14(delay_usec) +
					     FUNC3(5000));
	}

out_sleep:
	FUNC7(wl->dev);
	FUNC8(wl->dev);

out:
	FUNC5(&wl->mutex);
}