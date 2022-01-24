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
struct wl12xx_vif {int channel; int radar_enabled; int /*<<< orphan*/  channel_type; int /*<<< orphan*/  band; int /*<<< orphan*/  flags; int /*<<< orphan*/  role_id; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; scalar_t__ radar_enabled; } ;
struct TYPE_3__ {scalar_t__ dfs_state; int /*<<< orphan*/  band; int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EINVAL ; 
 scalar_t__ NL80211_DFS_USABLE ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  WLVIF_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct wl1271*,struct wl12xx_vif*) ; 
 struct wl12xx_vif* FUNC12 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC13 (struct wl1271*,struct wl12xx_vif*,int) ; 

__attribute__((used)) static int FUNC14(struct ieee80211_hw *hw,
					struct ieee80211_vif *vif,
					struct ieee80211_chanctx_conf *ctx)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC12(vif);
	int channel = FUNC1(
		ctx->def.chan->center_freq);
	int ret = -EINVAL;

	FUNC10(DEBUG_MAC80211,
		     "mac80211 assign chanctx (role %d) %d (type %d) (radar %d dfs_state %d)",
		     wlvif->role_id, channel,
		     FUNC0(&ctx->def),
		     ctx->radar_enabled, ctx->def.chan->dfs_state);

	FUNC2(&wl->mutex);

	if (FUNC9(wl->state != WLCORE_STATE_ON))
		goto out;

	if (FUNC9(!FUNC8(WLVIF_FLAG_INITIALIZED, &wlvif->flags)))
		goto out;

	ret = FUNC4(wl->dev);
	if (ret < 0) {
		FUNC7(wl->dev);
		goto out;
	}

	wlvif->band = ctx->def.chan->band;
	wlvif->channel = channel;
	wlvif->channel_type = FUNC0(&ctx->def);

	/* update default rates according to the band */
	FUNC11(wl, wlvif);

	if (ctx->radar_enabled &&
	    ctx->def.chan->dfs_state == NL80211_DFS_USABLE) {
		FUNC10(DEBUG_MAC80211, "Start radar detection");
		FUNC13(wl, wlvif, true);
		wlvif->radar_enabled = true;
	}

	FUNC5(wl->dev);
	FUNC6(wl->dev);
out:
	FUNC3(&wl->mutex);

	return 0;
}