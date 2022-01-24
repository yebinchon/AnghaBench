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
struct TYPE_2__ {int /*<<< orphan*/  klv_template_id; } ;
struct wl12xx_vif {scalar_t__ bss_type; TYPE_1__ sta; int /*<<< orphan*/  channel_switch_work; int /*<<< orphan*/  flags; int /*<<< orphan*/ * probereq; scalar_t__ aid; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_KEEP_ALIVE_TPL_INVALID ; 
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int /*<<< orphan*/  WLVIF_FLAG_CS_PROGRESS ; 
 int /*<<< orphan*/  WLVIF_FLAG_IBSS_JOINED ; 
 int /*<<< orphan*/  WLVIF_FLAG_STA_ASSOCIATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_vif*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct wl1271*,struct wl12xx_vif*,int) ; 
 int FUNC5 (struct wl1271*,struct wl12xx_vif*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wl1271*,struct wl12xx_vif*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1271*,struct wl12xx_vif*) ; 
 struct ieee80211_vif* FUNC9 (struct wl12xx_vif*) ; 

__attribute__((used)) static int FUNC10(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	int ret;
	bool sta = wlvif->bss_type == BSS_TYPE_STA_BSS;

	/* make sure we are connected (sta) joined */
	if (sta &&
	    !FUNC3(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags))
		return false;

	/* make sure we are joined (ibss) */
	if (!sta &&
	    FUNC3(WLVIF_FLAG_IBSS_JOINED, &wlvif->flags))
		return false;

	if (sta) {
		/* use defaults when not associated */
		wlvif->aid = 0;

		/* free probe-request template */
		FUNC1(wlvif->probereq);
		wlvif->probereq = NULL;

		/* disable connection monitor features */
		ret = FUNC5(wl, wlvif, false);
		if (ret < 0)
			return ret;

		/* Disable the keep-alive feature */
		ret = FUNC7(wl, wlvif, false);
		if (ret < 0)
			return ret;

		/* disable beacon filtering */
		ret = FUNC4(wl, wlvif, false);
		if (ret < 0)
			return ret;
	}

	if (FUNC3(WLVIF_FLAG_CS_PROGRESS, &wlvif->flags)) {
		struct ieee80211_vif *vif = FUNC9(wlvif);

		FUNC8(wl, wlvif);
		FUNC2(vif, false);
		FUNC0(&wlvif->channel_switch_work);
	}

	/* invalidate keep-alive template */
	FUNC6(wl, wlvif,
				     wlvif->sta.klv_template_id,
				     ACX_KEEP_ALIVE_TPL_INVALID);

	return 0;
}