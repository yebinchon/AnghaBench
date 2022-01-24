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
struct wl1251 {scalar_t__ bss_type; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dtim_period; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  channel; int /*<<< orphan*/  vif; int /*<<< orphan*/  hw; int /*<<< orphan*/  bssid; int /*<<< orphan*/  rssi_thold; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1251* priv; } ;
struct ieee80211_bss_conf {int arp_addr_cnt; scalar_t__ assoc; int /*<<< orphan*/ * arp_addr_list; scalar_t__ use_cts_prot; scalar_t__ use_short_preamble; scalar_t__ use_short_slot; int /*<<< orphan*/  aid; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  bssid; int /*<<< orphan*/  cqm_rssi_thold; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_PREAMBLE_LONG ; 
 int /*<<< orphan*/  ACX_PREAMBLE_SHORT ; 
 int BSS_CHANGED_ARP_FILTER ; 
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_CQM ; 
 int BSS_CHANGED_ERP_CTS_PROT ; 
 int BSS_CHANGED_ERP_PREAMBLE ; 
 int BSS_CHANGED_ERP_SLOT ; 
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int /*<<< orphan*/  CMD_BEACON ; 
 int /*<<< orphan*/  CMD_PROBE_RESP ; 
 int /*<<< orphan*/  CMD_PS_POLL ; 
 int /*<<< orphan*/  CTSPROTECT_DISABLE ; 
 int /*<<< orphan*/  CTSPROTECT_ENABLE ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  SLOT_TIME_LONG ; 
 int /*<<< orphan*/  SLOT_TIME_SHORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WL1251_ACX_LOW_RSSI_TYPE_EDGE ; 
 int /*<<< orphan*/  WL1251_DEFAULT_BEACON_INT ; 
 int /*<<< orphan*/  WL1251_DEFAULT_DTIM_PERIOD ; 
 int /*<<< orphan*/  WL1251_DEFAULT_LOW_RSSI_DEPTH ; 
 int /*<<< orphan*/  WL1251_DEFAULT_LOW_RSSI_WEIGHT ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct wl1251*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct wl1251*) ; 
 int FUNC16 (struct wl1251*) ; 
 int FUNC17 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int FUNC19 (struct wl1251*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct wl1251*) ; 
 int FUNC21 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int) ; 

__attribute__((used)) static void FUNC23(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif,
				       struct ieee80211_bss_conf *bss_conf,
				       u32 changed)
{
	struct wl1251 *wl = hw->priv;
	struct sk_buff *beacon, *skb;
	bool enable;
	int ret;

	FUNC18(DEBUG_MAC80211, "mac80211 bss info changed");

	FUNC7(&wl->mutex);

	ret = FUNC21(wl);
	if (ret < 0)
		goto out;

	if (changed & BSS_CHANGED_CQM) {
		ret = FUNC12(wl, bss_conf->cqm_rssi_thold,
					  WL1251_DEFAULT_LOW_RSSI_WEIGHT,
					  WL1251_DEFAULT_LOW_RSSI_DEPTH,
					  WL1251_ACX_LOW_RSSI_TYPE_EDGE);
		if (ret < 0)
			goto out;
		wl->rssi_thold = bss_conf->cqm_rssi_thold;
	}

	if ((changed & BSS_CHANGED_BSSID) &&
	    FUNC5(wl->bssid, bss_conf->bssid, ETH_ALEN)) {
		FUNC6(wl->bssid, bss_conf->bssid, ETH_ALEN);

		if (!FUNC4(wl->bssid)) {
			ret = FUNC15(wl);
			if (ret < 0)
				goto out_sleep;

			ret = FUNC16(wl);
			if (ret < 0)
				goto out_sleep;

			ret = FUNC19(wl, wl->bss_type, wl->channel,
					  wl->beacon_int, wl->dtim_period);
			if (ret < 0)
				goto out_sleep;
		}
	}

	if (changed & BSS_CHANGED_ASSOC) {
		if (bss_conf->assoc) {
			wl->beacon_int = bss_conf->beacon_int;

			skb = FUNC3(wl->hw, wl->vif);
			if (!skb)
				goto out_sleep;

			ret = FUNC17(wl, CMD_PS_POLL,
						      skb->data,
						      skb->len);
			FUNC1(skb);
			if (ret < 0)
				goto out_sleep;

			ret = FUNC9(wl, bss_conf->aid);
			if (ret < 0)
				goto out_sleep;
		} else {
			/* use defaults when not associated */
			wl->beacon_int = WL1251_DEFAULT_BEACON_INT;
			wl->dtim_period = WL1251_DEFAULT_DTIM_PERIOD;
		}
	}
	if (changed & BSS_CHANGED_ERP_SLOT) {
		if (bss_conf->use_short_slot)
			ret = FUNC14(wl, SLOT_TIME_SHORT);
		else
			ret = FUNC14(wl, SLOT_TIME_LONG);
		if (ret < 0) {
			FUNC22("Set slot time failed %d", ret);
			goto out_sleep;
		}
	}

	if (changed & BSS_CHANGED_ERP_PREAMBLE) {
		if (bss_conf->use_short_preamble)
			FUNC13(wl, ACX_PREAMBLE_SHORT);
		else
			FUNC13(wl, ACX_PREAMBLE_LONG);
	}

	if (changed & BSS_CHANGED_ERP_CTS_PROT) {
		if (bss_conf->use_cts_prot)
			ret = FUNC11(wl, CTSPROTECT_ENABLE);
		else
			ret = FUNC11(wl, CTSPROTECT_DISABLE);
		if (ret < 0) {
			FUNC22("Set ctsprotect failed %d", ret);
			goto out_sleep;
		}
	}

	if (changed & BSS_CHANGED_ARP_FILTER) {
		__be32 addr = bss_conf->arp_addr_list[0];
		FUNC0(wl->bss_type != BSS_TYPE_STA_BSS);

		enable = bss_conf->arp_addr_cnt == 1 && bss_conf->assoc;
		ret = FUNC10(wl, enable, addr);
		if (ret < 0)
			goto out_sleep;
	}

	if (changed & BSS_CHANGED_BEACON) {
		beacon = FUNC2(hw, vif);
		if (!beacon)
			goto out_sleep;

		ret = FUNC17(wl, CMD_BEACON, beacon->data,
					      beacon->len);

		if (ret < 0) {
			FUNC1(beacon);
			goto out_sleep;
		}

		ret = FUNC17(wl, CMD_PROBE_RESP, beacon->data,
					      beacon->len);

		FUNC1(beacon);

		if (ret < 0)
			goto out_sleep;

		ret = FUNC19(wl, wl->bss_type, wl->channel,
				  wl->beacon_int, wl->dtim_period);

		if (ret < 0)
			goto out_sleep;
	}

out_sleep:
	FUNC20(wl);

out:
	FUNC8(&wl->mutex);
}