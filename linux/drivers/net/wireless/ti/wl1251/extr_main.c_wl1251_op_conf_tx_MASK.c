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
typedef  int /*<<< orphan*/  u16 ;
struct wl1251 {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; scalar_t__ uapsd; int /*<<< orphan*/  aifs; int /*<<< orphan*/  cw_max; int /*<<< orphan*/  cw_min; } ;
struct ieee80211_hw {struct wl1251* priv; } ;
typedef  enum wl1251_acx_ps_scheme { ____Placeholder_wl1251_acx_ps_scheme } wl1251_acx_ps_scheme ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TYPE_EDCF ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  WL1251_ACX_ACK_POLICY_LEGACY ; 
 int WL1251_ACX_PS_SCHEME_LEGACY ; 
 int WL1251_ACX_PS_SCHEME_UPSD_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1251*) ; 
 int FUNC6 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw,
			     struct ieee80211_vif *vif, u16 queue,
			     const struct ieee80211_tx_queue_params *params)
{
	enum wl1251_acx_ps_scheme ps_scheme;
	struct wl1251 *wl = hw->priv;
	int ret;

	FUNC0(&wl->mutex);

	FUNC4(DEBUG_MAC80211, "mac80211 conf tx %d", queue);

	ret = FUNC6(wl);
	if (ret < 0)
		goto out;

	/* mac80211 uses units of 32 usec */
	ret = FUNC2(wl, FUNC7(queue),
				params->cw_min, params->cw_max,
				params->aifs, params->txop * 32);
	if (ret < 0)
		goto out_sleep;

	if (params->uapsd)
		ps_scheme = WL1251_ACX_PS_SCHEME_UPSD_TRIGGER;
	else
		ps_scheme = WL1251_ACX_PS_SCHEME_LEGACY;

	ret = FUNC3(wl, FUNC7(queue),
				 CHANNEL_TYPE_EDCF,
				 FUNC7(queue), ps_scheme,
				 WL1251_ACX_ACK_POLICY_LEGACY);
	if (ret < 0)
		goto out_sleep;

out_sleep:
	FUNC5(wl);

out:
	FUNC1(&wl->mutex);

	return ret;
}