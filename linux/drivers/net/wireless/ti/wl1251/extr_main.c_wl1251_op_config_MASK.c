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
typedef  int u32 ;
struct wl1251 {int monitor_present; int channel; int joined; int psm_requested; scalar_t__ station_mode; scalar_t__ power_level; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dtim_period; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  bss_type; int /*<<< orphan*/  scanning; int /*<<< orphan*/ * vif; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_conf {int flags; scalar_t__ power_level; int /*<<< orphan*/  ps_dtim_period; TYPE_2__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct wl1251* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  DEBUG_PSM ; 
 int DF_ENCRYPTION_DISABLE ; 
 int DF_SNIFF_MODE_ENABLE ; 
 int IEEE80211_CONF_CHANGE_IDLE ; 
 int IEEE80211_CONF_CHANGE_MONITOR ; 
 int IEEE80211_CONF_IDLE ; 
 int IEEE80211_CONF_MONITOR ; 
 int IEEE80211_CONF_PS ; 
 scalar_t__ STATION_ACTIVE_MODE ; 
 scalar_t__ STATION_IDLE ; 
 scalar_t__ STATION_POWER_SAVE_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wl1251*,int) ; 
 int FUNC4 (struct wl1251*,scalar_t__) ; 
 int FUNC5 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ieee80211_conf*,struct wl1251*) ; 
 int FUNC7 (struct wl1251*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (struct wl1251*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1251*) ; 
 int FUNC11 (struct wl1251*) ; 
 int FUNC12 (struct wl1251*,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct ieee80211_hw *hw, u32 changed)
{
	struct wl1251 *wl = hw->priv;
	struct ieee80211_conf *conf = &hw->conf;
	int channel, ret = 0;

	channel = FUNC0(
			conf->chandef.chan->center_freq);

	FUNC8(DEBUG_MAC80211,
		     "mac80211 config ch %d monitor %s psm %s power %d",
		     channel,
		     conf->flags & IEEE80211_CONF_MONITOR ? "on" : "off",
		     conf->flags & IEEE80211_CONF_PS ? "on" : "off",
		     conf->power_level);

	FUNC1(&wl->mutex);

	ret = FUNC11(wl);
	if (ret < 0)
		goto out;

	if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
		u32 mode;

		if (conf->flags & IEEE80211_CONF_MONITOR) {
			wl->monitor_present = true;
			mode = DF_SNIFF_MODE_ENABLE | DF_ENCRYPTION_DISABLE;
		} else {
			wl->monitor_present = false;
			mode = 0;
		}

		ret = FUNC3(wl, mode);
		if (ret < 0)
			goto out_sleep;
	}

	if (channel != wl->channel) {
		wl->channel = channel;

		/*
		 * Use ENABLE_RX command for channel switching when no
		 * interface is present (monitor mode only).
		 * This leaves the tx path disabled in firmware, whereas
		 * the usual JOIN command seems to transmit some frames
		 * at firmware level.
		 */
		if (wl->vif == NULL) {
			wl->joined = false;
			ret = FUNC7(wl, wl->channel, 1);
		} else {
			ret = FUNC9(wl, wl->bss_type, wl->channel,
					  wl->beacon_int, wl->dtim_period);
		}
		if (ret < 0)
			goto out_sleep;
	}

	if (FUNC6(conf, wl) && !wl->psm_requested) {
		FUNC8(DEBUG_PSM, "psm enabled");

		wl->psm_requested = true;

		wl->dtim_period = conf->ps_dtim_period;

		ret = FUNC5(wl, wl->beacon_int,
						  wl->dtim_period);

		/*
		 * mac80211 enables PSM only if we're already associated.
		 */
		ret = FUNC12(wl, STATION_POWER_SAVE_MODE);
		if (ret < 0)
			goto out_sleep;
	} else if (!FUNC6(conf, wl) && wl->psm_requested) {
		FUNC8(DEBUG_PSM, "psm disabled");

		wl->psm_requested = false;

		if (wl->station_mode != STATION_ACTIVE_MODE) {
			ret = FUNC12(wl, STATION_ACTIVE_MODE);
			if (ret < 0)
				goto out_sleep;
		}
	}

	if (changed & IEEE80211_CONF_CHANGE_IDLE && !wl->scanning) {
		if (conf->flags & IEEE80211_CONF_IDLE) {
			ret = FUNC12(wl, STATION_IDLE);
			if (ret < 0)
				goto out_sleep;
		} else {
			ret = FUNC12(wl, STATION_ACTIVE_MODE);
			if (ret < 0)
				goto out_sleep;
			ret = FUNC9(wl, wl->bss_type, wl->channel,
					  wl->beacon_int, wl->dtim_period);
			if (ret < 0)
				goto out_sleep;
		}
	}

	if (conf->power_level != wl->power_level) {
		ret = FUNC4(wl, conf->power_level);
		if (ret < 0)
			goto out_sleep;

		wl->power_level = conf->power_level;
	}

out_sleep:
	FUNC10(wl);

out:
	FUNC2(&wl->mutex);

	return ret;
}