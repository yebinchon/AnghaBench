#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_8__ {int /*<<< orphan*/  qos; int /*<<< orphan*/  hlid; } ;
struct wl12xx_vif {scalar_t__ bss_type; size_t band; int /*<<< orphan*/  ip_addr; TYPE_3__ sta; int /*<<< orphan*/  rate_set; int /*<<< orphan*/  flags; int /*<<< orphan*/  basic_rate_set; int /*<<< orphan*/  basic_rate; int /*<<< orphan*/  rssi_thold; } ;
struct TYPE_10__ {scalar_t__ forced_ps; } ;
struct TYPE_6__ {TYPE_5__ conn; } ;
struct wl1271 {TYPE_1__ conf; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_9__ {int* rx_mask; } ;
struct ieee80211_sta_ht_cap {scalar_t__ ht_supported; TYPE_4__ mcs; } ;
struct ieee80211_sta {int* supp_rates; struct ieee80211_sta_ht_cap ht_cap; } ;
struct TYPE_7__ {scalar_t__ width; } ;
struct ieee80211_bss_conf {int basic_rates; int arp_addr_cnt; scalar_t__ assoc; int /*<<< orphan*/  qos; int /*<<< orphan*/ * arp_addr_list; int /*<<< orphan*/  ht_operation_mode; TYPE_2__ chandef; scalar_t__ ps; scalar_t__ dtim_period; int /*<<< orphan*/  ibss_joined; int /*<<< orphan*/  bssid; int /*<<< orphan*/  cqm_rssi_thold; int /*<<< orphan*/  cqm_rssi_hyst; int /*<<< orphan*/  idle; scalar_t__ enable_beacon; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ACX_ARP_FILTER_ARP_FILTERING ; 
 int ACX_ARP_FILTER_AUTO_ARP ; 
 int BSS_CHANGED_ARP_FILTER ; 
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_BEACON_INFO ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_CQM ; 
 int BSS_CHANGED_HT ; 
 int BSS_CHANGED_IBSS ; 
 int BSS_CHANGED_IDLE ; 
 int BSS_CHANGED_PS ; 
 int BSS_CHANGED_QOS ; 
 scalar_t__ BSS_TYPE_IBSS ; 
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int /*<<< orphan*/  CONF_TX_IBSS_DEFAULT_RATES ; 
 int /*<<< orphan*/  DEBUG_ADHOC ; 
 int /*<<< orphan*/  DEBUG_PSM ; 
 int HW_HT_RATES_OFFSET ; 
 int HW_MIMO_RATES_OFFSET ; 
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ; 
 int STATION_ACTIVE_MODE ; 
 int STATION_AUTO_PS_MODE ; 
 int STATION_POWER_SAVE_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WLVIF_FLAG_IBSS_JOINED ; 
 int /*<<< orphan*/  WLVIF_FLAG_IN_PS ; 
 int /*<<< orphan*/  WLVIF_FLAG_STA_ASSOCIATED ; 
 int /*<<< orphan*/  WLVIF_FLAG_STA_AUTHORIZED ; 
 struct ieee80211_sta* FUNC1 (struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct wl1271*,struct wl12xx_vif*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wl1271*,struct wl12xx_vif*,int) ; 
 int FUNC9 (struct wl1271*,struct wl12xx_vif*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC12 (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ; 
 int FUNC13 (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ; 
 int FUNC14 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC16 (struct wl1271*,struct wl12xx_vif*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct wl1271*,int,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC22 (struct wl1271*,struct wl12xx_vif*) ; 
 struct wl12xx_vif* FUNC23 (struct ieee80211_vif*) ; 
 int FUNC24 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC25 (struct wl1271*,struct ieee80211_sta_ht_cap*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC27 (struct wl1271*,struct wl12xx_vif*,struct ieee80211_bss_conf*,int) ; 
 int FUNC28 (struct wl1271*,struct wl12xx_vif*,struct ieee80211_bss_conf*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct wl1271*,struct wl12xx_vif*) ; 

__attribute__((used)) static void FUNC30(struct wl1271 *wl,
					struct ieee80211_vif *vif,
					struct ieee80211_bss_conf *bss_conf,
					u32 changed)
{
	struct wl12xx_vif *wlvif = FUNC23(vif);
	bool do_join = false;
	bool is_ibss = (wlvif->bss_type == BSS_TYPE_IBSS);
	bool ibss_joined = false;
	u32 sta_rate_set = 0;
	int ret;
	struct ieee80211_sta *sta;
	bool sta_exists = false;
	struct ieee80211_sta_ht_cap sta_ht_cap;

	if (is_ibss) {
		ret = FUNC12(wl, vif, bss_conf,
						     changed);
		if (ret < 0)
			goto out;
	}

	if (changed & BSS_CHANGED_IBSS) {
		if (bss_conf->ibss_joined) {
			FUNC5(WLVIF_FLAG_IBSS_JOINED, &wlvif->flags);
			ibss_joined = true;
		} else {
			FUNC29(wl, wlvif);
			FUNC21(wl, wlvif);
		}
	}

	if ((changed & BSS_CHANGED_BEACON_INT) && ibss_joined)
		do_join = true;

	/* Need to update the SSID (for filtering etc) */
	if ((changed & BSS_CHANGED_BEACON) && ibss_joined)
		do_join = true;

	if ((changed & BSS_CHANGED_BEACON_ENABLED) && ibss_joined) {
		FUNC15(DEBUG_ADHOC, "ad-hoc beaconing: %s",
			     bss_conf->enable_beacon ? "enabled" : "disabled");

		do_join = true;
	}

	if (changed & BSS_CHANGED_IDLE && !is_ibss)
		FUNC17(wl, wlvif, bss_conf->idle);

	if (changed & BSS_CHANGED_CQM) {
		bool enable = false;
		if (bss_conf->cqm_rssi_thold)
			enable = true;
		ret = FUNC9(wl, wlvif, enable,
						  bss_conf->cqm_rssi_thold,
						  bss_conf->cqm_rssi_hyst);
		if (ret < 0)
			goto out;
		wlvif->rssi_thold = bss_conf->cqm_rssi_thold;
	}

	if (changed & (BSS_CHANGED_BSSID | BSS_CHANGED_HT |
		       BSS_CHANGED_ASSOC)) {
		FUNC3();
		sta = FUNC1(vif, bss_conf->bssid);
		if (sta) {
			u8 *rx_mask = sta->ht_cap.mcs.rx_mask;

			/* save the supp_rates of the ap */
			sta_rate_set = sta->supp_rates[wlvif->band];
			if (sta->ht_cap.ht_supported)
				sta_rate_set |=
					(rx_mask[0] << HW_HT_RATES_OFFSET) |
					(rx_mask[1] << HW_MIMO_RATES_OFFSET);
			sta_ht_cap = sta->ht_cap;
			sta_exists = true;
		}

		FUNC4();
	}

	if (changed & BSS_CHANGED_BSSID) {
		if (!FUNC2(bss_conf->bssid)) {
			ret = FUNC28(wl, wlvif, bss_conf,
					       sta_rate_set);
			if (ret < 0)
				goto out;

			/* Need to update the BSSID (for filtering etc) */
			do_join = true;
		} else {
			ret = FUNC24(wl, wlvif);
			if (ret < 0)
				goto out;
		}
	}

	if (changed & BSS_CHANGED_IBSS) {
		FUNC15(DEBUG_ADHOC, "ibss_joined: %d",
			     bss_conf->ibss_joined);

		if (bss_conf->ibss_joined) {
			u32 rates = bss_conf->basic_rates;
			wlvif->basic_rate_set =
				FUNC18(wl, rates,
							    wlvif->band);
			wlvif->basic_rate =
				FUNC19(wl,
						       wlvif->basic_rate_set);

			/* by default, use 11b + OFDM rates */
			wlvif->rate_set = CONF_TX_IBSS_DEFAULT_RATES;
			ret = FUNC11(wl, wlvif);
			if (ret < 0)
				goto out;
		}
	}

	if ((changed & BSS_CHANGED_BEACON_INFO) && bss_conf->dtim_period) {
		/* enable beacon filtering */
		ret = FUNC8(wl, wlvif, true);
		if (ret < 0)
			goto out;
	}

	ret = FUNC13(wl, vif, bss_conf, changed);
	if (ret < 0)
		goto out;

	if (do_join) {
		ret = FUNC26(wl, wlvif);
		if (ret < 0) {
			FUNC20("cmd join failed %d", ret);
			goto out;
		}
	}

	if (changed & BSS_CHANGED_ASSOC) {
		if (bss_conf->assoc) {
			ret = FUNC27(wl, wlvif, bss_conf,
					       sta_rate_set);
			if (ret < 0)
				goto out;

			if (FUNC6(WLVIF_FLAG_STA_AUTHORIZED, &wlvif->flags))
				FUNC22(wl, wlvif);
		} else {
			FUNC29(wl, wlvif);
		}
	}

	if (changed & BSS_CHANGED_PS) {
		if ((bss_conf->ps) &&
		    FUNC6(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags) &&
		    !FUNC6(WLVIF_FLAG_IN_PS, &wlvif->flags)) {
			int ps_mode;
			char *ps_mode_str;

			if (wl->conf.conn.forced_ps) {
				ps_mode = STATION_POWER_SAVE_MODE;
				ps_mode_str = "forced";
			} else {
				ps_mode = STATION_AUTO_PS_MODE;
				ps_mode_str = "auto";
			}

			FUNC15(DEBUG_PSM, "%s ps enabled", ps_mode_str);

			ret = FUNC16(wl, wlvif, ps_mode);
			if (ret < 0)
				FUNC20("enter %s ps failed %d",
					       ps_mode_str, ret);
		} else if (!bss_conf->ps &&
			   FUNC6(WLVIF_FLAG_IN_PS, &wlvif->flags)) {
			FUNC15(DEBUG_PSM, "auto ps disabled");

			ret = FUNC16(wl, wlvif,
						 STATION_ACTIVE_MODE);
			if (ret < 0)
				FUNC20("exit auto ps failed %d", ret);
		}
	}

	/* Handle new association with HT. Do this after join. */
	if (sta_exists) {
		bool enabled =
			bss_conf->chandef.width != NL80211_CHAN_WIDTH_20_NOHT;

		ret = FUNC25(wl,
					     &sta_ht_cap,
					     enabled,
					     wlvif->rate_set,
					     wlvif->sta.hlid);
		if (ret < 0) {
			FUNC20("Set ht cap failed %d", ret);
			goto out;

		}

		if (enabled) {
			ret = FUNC10(wl, wlvif,
						bss_conf->ht_operation_mode);
			if (ret < 0) {
				FUNC20("Set ht information failed %d",
					       ret);
				goto out;
			}
		}
	}

	/* Handle arp filtering. Done after join. */
	if ((changed & BSS_CHANGED_ARP_FILTER) ||
	    (!is_ibss && (changed & BSS_CHANGED_QOS))) {
		__be32 addr = bss_conf->arp_addr_list[0];
		wlvif->sta.qos = bss_conf->qos;
		FUNC0(wlvif->bss_type != BSS_TYPE_STA_BSS);

		if (bss_conf->arp_addr_cnt == 1 && bss_conf->assoc) {
			wlvif->ip_addr = addr;
			/*
			 * The template should have been configured only upon
			 * association. however, it seems that the correct ip
			 * isn't being set (when sending), so we have to
			 * reconfigure the template upon every ip change.
			 */
			ret = FUNC14(wl, wlvif);
			if (ret < 0) {
				FUNC20("build arp rsp failed: %d", ret);
				goto out;
			}

			ret = FUNC7(wl, wlvif,
				(ACX_ARP_FILTER_ARP_FILTERING |
				 ACX_ARP_FILTER_AUTO_ARP),
				addr);
		} else {
			wlvif->ip_addr = 0;
			ret = FUNC7(wl, wlvif, 0, addr);
		}

		if (ret < 0)
			goto out;
	}

out:
	return;
}