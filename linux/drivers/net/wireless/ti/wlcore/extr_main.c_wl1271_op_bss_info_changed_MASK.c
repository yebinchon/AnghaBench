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
struct wl12xx_vif {scalar_t__ bss_type; scalar_t__ power_level; int /*<<< orphan*/  flags; int /*<<< orphan*/  connection_loss_work; int /*<<< orphan*/  role_id; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct ieee80211_bss_conf {scalar_t__ txpower; int /*<<< orphan*/  enable_beacon; } ;

/* Variables and functions */
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_TXPOWER ; 
 scalar_t__ BSS_TYPE_AP_BSS ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  WLVIF_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (struct wl1271*,struct wl12xx_vif*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wl1271*) ; 
 struct wl12xx_vif* FUNC14 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC15(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif,
				       struct ieee80211_bss_conf *bss_conf,
				       u32 changed)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC14(vif);
	bool is_ap = (wlvif->bss_type == BSS_TYPE_AP_BSS);
	int ret;

	FUNC12(DEBUG_MAC80211, "mac80211 bss info role %d changed 0x%x",
		     wlvif->role_id, (int)changed);

	/*
	 * make sure to cancel pending disconnections if our association
	 * state changed
	 */
	if (!is_ap && (changed & BSS_CHANGED_ASSOC))
		FUNC0(&wlvif->connection_loss_work);

	if (is_ap && (changed & BSS_CHANGED_BEACON_ENABLED) &&
	    !bss_conf->enable_beacon)
		FUNC13(wl);

	FUNC1(&wl->mutex);

	if (FUNC8(wl->state != WLCORE_STATE_ON))
		goto out;

	if (FUNC8(!FUNC7(WLVIF_FLAG_INITIALIZED, &wlvif->flags)))
		goto out;

	ret = FUNC3(wl->dev);
	if (ret < 0) {
		FUNC6(wl->dev);
		goto out;
	}

	if ((changed & BSS_CHANGED_TXPOWER) &&
	    bss_conf->txpower != wlvif->power_level) {

		ret = FUNC9(wl, wlvif, bss_conf->txpower);
		if (ret < 0)
			goto out;

		wlvif->power_level = bss_conf->txpower;
	}

	if (is_ap)
		FUNC10(wl, vif, bss_conf, changed);
	else
		FUNC11(wl, vif, bss_conf, changed);

	FUNC4(wl->dev);
	FUNC5(wl->dev);

out:
	FUNC2(&wl->mutex);
}