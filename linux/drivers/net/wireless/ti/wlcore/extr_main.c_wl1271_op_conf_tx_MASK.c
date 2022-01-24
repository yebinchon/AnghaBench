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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wl12xx_vif {int /*<<< orphan*/  flags; } ;
struct wl1271 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int /*<<< orphan*/  aifs; int /*<<< orphan*/  cw_max; int /*<<< orphan*/  cw_min; scalar_t__ uapsd; } ;
struct ieee80211_hw {struct wl1271* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_ACK_POLICY_LEGACY ; 
 int /*<<< orphan*/  CONF_CHANNEL_TYPE_EDCF ; 
 int /*<<< orphan*/  CONF_PS_SCHEME_LEGACY ; 
 int /*<<< orphan*/  CONF_PS_SCHEME_UPSD_TRIGGER ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  WLVIF_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct wl12xx_vif* FUNC11 (struct ieee80211_vif*) ; 
 scalar_t__ FUNC12 (struct wl12xx_vif*) ; 

__attribute__((used)) static int FUNC13(struct ieee80211_hw *hw,
			     struct ieee80211_vif *vif, u16 queue,
			     const struct ieee80211_tx_queue_params *params)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC11(vif);
	u8 ps_scheme;
	int ret = 0;

	if (FUNC12(wlvif))
		return 0;

	FUNC0(&wl->mutex);

	FUNC9(DEBUG_MAC80211, "mac80211 conf tx %d", queue);

	if (params->uapsd)
		ps_scheme = CONF_PS_SCHEME_UPSD_TRIGGER;
	else
		ps_scheme = CONF_PS_SCHEME_LEGACY;

	if (!FUNC6(WLVIF_FLAG_INITIALIZED, &wlvif->flags))
		goto out;

	ret = FUNC2(wl->dev);
	if (ret < 0) {
		FUNC5(wl->dev);
		goto out;
	}

	/*
	 * the txop is confed in units of 32us by the mac80211,
	 * we need us
	 */
	ret = FUNC7(wl, wlvif, FUNC10(queue),
				params->cw_min, params->cw_max,
				params->aifs, params->txop << 5);
	if (ret < 0)
		goto out_sleep;

	ret = FUNC8(wl, wlvif, FUNC10(queue),
				 CONF_CHANNEL_TYPE_EDCF,
				 FUNC10(queue),
				 ps_scheme, CONF_ACK_POLICY_LEGACY,
				 0, 0);

out_sleep:
	FUNC3(wl->dev);
	FUNC4(wl->dev);

out:
	FUNC1(&wl->mutex);

	return ret;
}