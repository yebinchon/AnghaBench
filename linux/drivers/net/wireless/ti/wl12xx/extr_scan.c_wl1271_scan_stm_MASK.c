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
typedef  int /*<<< orphan*/  u32 ;
struct wl12xx_vif {int /*<<< orphan*/ * bitrate_masks; } ;
struct TYPE_4__ {int state; int failed; TYPE_1__* req; } ;
struct wl1271 {int /*<<< orphan*/  scan_complete_work; int /*<<< orphan*/  hw; TYPE_2__ scan; int /*<<< orphan*/  enable_11a; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_3__ {int /*<<< orphan*/  no_cck; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_TX_CCK_RATES ; 
 int /*<<< orphan*/  CONF_TX_RATE_MASK_BASIC_P2P ; 
 int NL80211_BAND_2GHZ ; 
 int NL80211_BAND_5GHZ ; 
 int WL1271_NOTHING_TO_SCAN ; 
#define  WL1271_SCAN_STATE_2GHZ_ACTIVE 133 
#define  WL1271_SCAN_STATE_2GHZ_PASSIVE 132 
#define  WL1271_SCAN_STATE_5GHZ_ACTIVE 131 
#define  WL1271_SCAN_STATE_5GHZ_PASSIVE 130 
#define  WL1271_SCAN_STATE_DONE 129 
#define  WL1271_SCAN_STATE_IDLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct wl1271*,struct wl12xx_vif*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*,int /*<<< orphan*/ ) ; 

void FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	int ret = 0;
	enum nl80211_band band;
	u32 rate, mask;

	switch (wl->scan.state) {
	case WL1271_SCAN_STATE_IDLE:
		break;

	case WL1271_SCAN_STATE_2GHZ_ACTIVE:
		band = NL80211_BAND_2GHZ;
		mask = wlvif->bitrate_masks[band];
		if (wl->scan.req->no_cck) {
			mask &= ~CONF_TX_CCK_RATES;
			if (!mask)
				mask = CONF_TX_RATE_MASK_BASIC_P2P;
		}
		rate = FUNC5(wl, mask);
		ret = FUNC4(wl, wlvif, band, false, rate);
		if (ret == WL1271_NOTHING_TO_SCAN) {
			wl->scan.state = WL1271_SCAN_STATE_2GHZ_PASSIVE;
			FUNC6(wl, wlvif);
		}

		break;

	case WL1271_SCAN_STATE_2GHZ_PASSIVE:
		band = NL80211_BAND_2GHZ;
		mask = wlvif->bitrate_masks[band];
		if (wl->scan.req->no_cck) {
			mask &= ~CONF_TX_CCK_RATES;
			if (!mask)
				mask = CONF_TX_RATE_MASK_BASIC_P2P;
		}
		rate = FUNC5(wl, mask);
		ret = FUNC4(wl, wlvif, band, true, rate);
		if (ret == WL1271_NOTHING_TO_SCAN) {
			if (wl->enable_11a)
				wl->scan.state = WL1271_SCAN_STATE_5GHZ_ACTIVE;
			else
				wl->scan.state = WL1271_SCAN_STATE_DONE;
			FUNC6(wl, wlvif);
		}

		break;

	case WL1271_SCAN_STATE_5GHZ_ACTIVE:
		band = NL80211_BAND_5GHZ;
		rate = FUNC5(wl, wlvif->bitrate_masks[band]);
		ret = FUNC4(wl, wlvif, band, false, rate);
		if (ret == WL1271_NOTHING_TO_SCAN) {
			wl->scan.state = WL1271_SCAN_STATE_5GHZ_PASSIVE;
			FUNC6(wl, wlvif);
		}

		break;

	case WL1271_SCAN_STATE_5GHZ_PASSIVE:
		band = NL80211_BAND_5GHZ;
		rate = FUNC5(wl, wlvif->bitrate_masks[band]);
		ret = FUNC4(wl, wlvif, band, true, rate);
		if (ret == WL1271_NOTHING_TO_SCAN) {
			wl->scan.state = WL1271_SCAN_STATE_DONE;
			FUNC6(wl, wlvif);
		}

		break;

	case WL1271_SCAN_STATE_DONE:
		wl->scan.failed = false;
		FUNC0(&wl->scan_complete_work);
		FUNC1(wl->hw, &wl->scan_complete_work,
					     FUNC2(0));
		break;

	default:
		FUNC3("invalid scan state");
		break;
	}

	if (ret < 0) {
		FUNC0(&wl->scan_complete_work);
		FUNC1(wl->hw, &wl->scan_complete_work,
					     FUNC2(0));
	}
}