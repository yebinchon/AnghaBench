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
struct TYPE_2__ {scalar_t__ role_chan_type; int /*<<< orphan*/  hlid; } ;
struct wl12xx_vif {scalar_t__ rc_update_bw; scalar_t__ bss_type; TYPE_1__ sta; int /*<<< orphan*/  flags; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 scalar_t__ IEEE80211_STA_RX_BW_40 ; 
 scalar_t__ NL80211_CHAN_HT40MINUS ; 
 scalar_t__ NL80211_CHAN_HT40PLUS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WLVIF_FLAG_STA_ASSOCIATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct wl1271 *wl,
				 struct wl12xx_vif *wlvif)
{
	bool wide = wlvif->rc_update_bw >= IEEE80211_STA_RX_BW_40;

	FUNC3(DEBUG_MAC80211, "mac80211 sta_rc_update wide %d", wide);

	/* sanity */
	if (FUNC0(wlvif->bss_type != BSS_TYPE_STA_BSS))
		return;

	/* ignore the change before association */
	if (!FUNC2(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags))
		return;

	/*
	 * If we started out as wide, we can change the operation mode. If we
	 * thought this was a 20mhz AP, we have to reconnect
	 */
	if (wlvif->sta.role_chan_type == NL80211_CHAN_HT40MINUS ||
	    wlvif->sta.role_chan_type == NL80211_CHAN_HT40PLUS)
		FUNC5(wl, wlvif->sta.hlid, wide);
	else
		FUNC1(FUNC4(wlvif));
}