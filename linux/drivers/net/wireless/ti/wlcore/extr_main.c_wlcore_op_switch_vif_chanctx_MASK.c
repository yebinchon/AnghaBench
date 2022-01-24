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
struct wl1271 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct ieee80211_vif_chanctx_switch {int /*<<< orphan*/  new_ctx; int /*<<< orphan*/  vif; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
typedef  enum ieee80211_chanctx_switch_mode { ____Placeholder_ieee80211_chanctx_switch_mode } ieee80211_chanctx_switch_mode ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int FUNC0 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct wl12xx_vif* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct ieee80211_hw *hw,
			     struct ieee80211_vif_chanctx_switch *vifs,
			     int n_vifs,
			     enum ieee80211_chanctx_switch_mode mode)
{
	struct wl1271 *wl = hw->priv;
	int i, ret;

	FUNC7(DEBUG_MAC80211,
		     "mac80211 switch chanctx n_vifs %d mode %d",
		     n_vifs, mode);

	FUNC1(&wl->mutex);

	ret = FUNC3(wl->dev);
	if (ret < 0) {
		FUNC6(wl->dev);
		goto out;
	}

	for (i = 0; i < n_vifs; i++) {
		struct wl12xx_vif *wlvif = FUNC8(vifs[i].vif);

		ret = FUNC0(wl, wlvif, vifs[i].new_ctx);
		if (ret)
			goto out_sleep;
	}
out_sleep:
	FUNC4(wl->dev);
	FUNC5(wl->dev);
out:
	FUNC2(&wl->mutex);

	return 0;
}