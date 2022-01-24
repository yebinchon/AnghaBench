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
typedef  size_t u8 ;
typedef  int u32 ;
struct wl12xx_vif {size_t band; int /*<<< orphan*/  basic_rate_set; int /*<<< orphan*/  role_id; } ;
struct wl12xx_cmd_add_peer {size_t hlid; int wmm; void* supported_rates; int /*<<< orphan*/ * psd_type; int /*<<< orphan*/  role_id; int /*<<< orphan*/  session_id; int /*<<< orphan*/  sp_len; int /*<<< orphan*/  aid; int /*<<< orphan*/  bss_index; int /*<<< orphan*/  addr; } ;
struct wl1271 {int /*<<< orphan*/ * session_ids; } ;
struct TYPE_3__ {int* rx_mask; } ;
struct TYPE_4__ {TYPE_1__ mcs; scalar_t__ ht_supported; } ;
struct ieee80211_sta {int uapsd_queues; int* supp_rates; TYPE_2__ ht_cap; scalar_t__ wme; int /*<<< orphan*/  max_sp; int /*<<< orphan*/  aid; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CMD_ADD_PEER ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HW_HT_RATES_OFFSET ; 
 int HW_MIMO_RATES_OFFSET ; 
 int NUM_ACCESS_CATEGORIES_COPY ; 
 int /*<<< orphan*/  WL1271_AP_BSS_INDEX ; 
 int /*<<< orphan*/  WL1271_PSD_LEGACY ; 
 int /*<<< orphan*/  WL1271_PSD_UPSD_TRIGGER ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl12xx_cmd_add_peer*) ; 
 struct wl12xx_cmd_add_peer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wl1271*,int /*<<< orphan*/ ,struct wl12xx_cmd_add_peer*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1271*,int,size_t) ; 

int FUNC9(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			struct ieee80211_sta *sta, u8 hlid)
{
	struct wl12xx_cmd_add_peer *cmd;
	int i, ret;
	u32 sta_rates;

	FUNC6(DEBUG_CMD, "cmd add peer %d", (int)hlid);

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC4(cmd->addr, sta->addr, ETH_ALEN);
	cmd->bss_index = WL1271_AP_BSS_INDEX;
	cmd->aid = sta->aid;
	cmd->hlid = hlid;
	cmd->sp_len = sta->max_sp;
	cmd->wmm = sta->wme ? 1 : 0;
	cmd->session_id = wl->session_ids[hlid];
	cmd->role_id = wlvif->role_id;

	for (i = 0; i < NUM_ACCESS_CATEGORIES_COPY; i++)
		if (sta->wme && (sta->uapsd_queues & FUNC0(i)))
			cmd->psd_type[NUM_ACCESS_CATEGORIES_COPY-1-i] =
					WL1271_PSD_UPSD_TRIGGER;
		else
			cmd->psd_type[NUM_ACCESS_CATEGORIES_COPY-1-i] =
					WL1271_PSD_LEGACY;


	sta_rates = sta->supp_rates[wlvif->band];
	if (sta->ht_cap.ht_supported)
		sta_rates |=
			(sta->ht_cap.mcs.rx_mask[0] << HW_HT_RATES_OFFSET) |
			(sta->ht_cap.mcs.rx_mask[1] << HW_MIMO_RATES_OFFSET);

	cmd->supported_rates =
		FUNC1(FUNC8(wl, sta_rates,
							wlvif->band));

	if (!cmd->supported_rates) {
		FUNC6(DEBUG_CMD,
			     "peer has no supported rates yet, configuring basic rates: 0x%x",
			     wlvif->basic_rate_set);
		cmd->supported_rates = FUNC1(wlvif->basic_rate_set);
	}

	FUNC6(DEBUG_CMD, "new peer rates=0x%x queues=0x%x",
		     cmd->supported_rates, sta->uapsd_queues);

	ret = FUNC5(wl, CMD_ADD_PEER, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC7("failed to initiate cmd add peer");
		goto out_free;
	}

out_free:
	FUNC2(cmd);

out:
	return ret;
}