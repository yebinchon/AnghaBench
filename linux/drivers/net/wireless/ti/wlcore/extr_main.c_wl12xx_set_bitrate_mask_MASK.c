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
struct wl12xx_vif {scalar_t__ bss_type; int /*<<< orphan*/  basic_rate_set; int /*<<< orphan*/  basic_rate; int /*<<< orphan*/  flags; int /*<<< orphan*/ * bitrate_masks; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct cfg80211_bitrate_mask {TYPE_1__* control; } ;
struct TYPE_2__ {int /*<<< orphan*/  legacy; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int WLCORE_NUM_BANDS ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  WLVIF_FLAG_STA_ASSOCIATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC11 (struct wl1271*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*,int /*<<< orphan*/ ) ; 
 struct wl12xx_vif* FUNC13 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC14(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   const struct cfg80211_bitrate_mask *mask)
{
	struct wl12xx_vif *wlvif = FUNC13(vif);
	struct wl1271 *wl = hw->priv;
	int i, ret = 0;

	FUNC9(DEBUG_MAC80211, "mac80211 set_bitrate_mask 0x%x 0x%x",
		mask->control[NL80211_BAND_2GHZ].legacy,
		mask->control[NL80211_BAND_5GHZ].legacy);

	FUNC0(&wl->mutex);

	for (i = 0; i < WLCORE_NUM_BANDS; i++)
		wlvif->bitrate_masks[i] =
			FUNC11(wl,
						    mask->control[i].legacy,
						    i);

	if (FUNC7(wl->state != WLCORE_STATE_ON))
		goto out;

	if (wlvif->bss_type == BSS_TYPE_STA_BSS &&
	    !FUNC6(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags)) {

		ret = FUNC2(wl->dev);
		if (ret < 0) {
			FUNC5(wl->dev);
			goto out;
		}

		FUNC10(wl, wlvif);
		wlvif->basic_rate =
			FUNC12(wl, wlvif->basic_rate_set);
		ret = FUNC8(wl, wlvif);

		FUNC3(wl->dev);
		FUNC4(wl->dev);
	}
out:
	FUNC1(&wl->mutex);

	return ret;
}