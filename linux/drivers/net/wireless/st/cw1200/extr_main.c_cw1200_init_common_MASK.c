#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_supported_band {int n_channels; TYPE_4__* channels; } ;
struct ieee80211_hw {int queues; int max_rates; int max_rate_tries; int sta_data_size; TYPE_3__* wiphy; scalar_t__ extra_tx_headroom; struct cw1200_common* priv; } ;
struct cw1200_sta_priv {int dummy; } ;
struct TYPE_6__ {int done; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  probe_work; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; } ;
struct cw1200_common {int hw_type; int ba_rx_tid_mask; int ba_tx_tid_mask; int rts_threshold; TYPE_2__ wsm_cmd; int /*<<< orphan*/  wsm_cmd_buf; int /*<<< orphan*/  ps_mode_switch_done; int /*<<< orphan*/  wsm_startup_done; int /*<<< orphan*/  wsm_cmd_wq; int /*<<< orphan*/  channel_switch_done; int /*<<< orphan*/  tx_queue_stats; int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/  mcast_timeout; int /*<<< orphan*/  set_beacon_wakeup_period_work; int /*<<< orphan*/  update_filtering_work; int /*<<< orphan*/  linkid_reset_work; int /*<<< orphan*/  link_id_gc_work; int /*<<< orphan*/  link_id_work; int /*<<< orphan*/  multicast_stop_work; int /*<<< orphan*/  multicast_start_work; int /*<<< orphan*/  set_tim_work; int /*<<< orphan*/  set_cts_work; int /*<<< orphan*/  ps_state_lock; int /*<<< orphan*/  bss_loss_lock; int /*<<< orphan*/  bss_params_work; int /*<<< orphan*/  bss_loss_work; int /*<<< orphan*/  event_handler; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  event_queue_lock; int /*<<< orphan*/  tx_policy_upload_work; int /*<<< orphan*/  wep_key_work; int /*<<< orphan*/  join_complete_work; int /*<<< orphan*/  unjoin_work; int /*<<< orphan*/  join_timeout; int /*<<< orphan*/  clear_recent_scan_work; TYPE_1__ scan; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  wsm_cmd_mux; int /*<<< orphan*/  mcs_rates; int /*<<< orphan*/  rates; int /*<<< orphan*/  mode; struct ieee80211_hw* hw; } ;
struct TYPE_8__ {int max_power; scalar_t__ max_antenna_gain; scalar_t__ flags; } ;
struct TYPE_7__ {int interface_modes; int max_scan_ssids; scalar_t__* perm_addr; int /*<<< orphan*/  max_scan_ie_len; struct ieee80211_supported_band** bands; int /*<<< orphan*/  flags; int /*<<< orphan*/ * wowlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMPDU_AGGREGATION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONNECTION_MONITOR ; 
 int /*<<< orphan*/  CW1200_LINK_ID_MAX ; 
 int /*<<< orphan*/  IEEE80211_MAX_DATA_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NEED_DTIM_BEFORE_ASSOC ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_P2P_CLIENT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_P2P_GO ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 int NUM_NL80211_BANDS ; 
 int /*<<< orphan*/  REPORTS_TX_ACK_STATUS ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGNAL_DBM ; 
 int /*<<< orphan*/  SUPPORTS_DYNAMIC_PS ; 
 int /*<<< orphan*/  SUPPORTS_PS ; 
 int /*<<< orphan*/  TX_AMPDU_SETUP_IN_HW ; 
 int /*<<< orphan*/  WIPHY_FLAG_AP_UAPSD ; 
 scalar_t__ WSM_TX_EXTRA_HEADROOM ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int cw1200_ba_rx_tids ; 
 int cw1200_ba_tx_tids ; 
 struct ieee80211_supported_band cw1200_band_2ghz ; 
 struct ieee80211_supported_band cw1200_band_5ghz ; 
 int /*<<< orphan*/  cw1200_bss_loss_work ; 
 int /*<<< orphan*/  cw1200_bss_params_work ; 
 int /*<<< orphan*/  cw1200_clear_recent_scan_work ; 
 int /*<<< orphan*/  cw1200_event_handler ; 
 int /*<<< orphan*/  cw1200_join_complete_work ; 
 int /*<<< orphan*/  cw1200_join_timeout ; 
 int /*<<< orphan*/  cw1200_link_id_gc_work ; 
 int /*<<< orphan*/  cw1200_link_id_reset ; 
 int /*<<< orphan*/  cw1200_link_id_work ; 
 int /*<<< orphan*/ * cw1200_mac_template ; 
 int /*<<< orphan*/  cw1200_mcast_timeout ; 
 int /*<<< orphan*/  cw1200_multicast_start_work ; 
 int /*<<< orphan*/  cw1200_multicast_stop_work ; 
 int /*<<< orphan*/  cw1200_n_rates ; 
 int /*<<< orphan*/  cw1200_ops ; 
 int /*<<< orphan*/  cw1200_probe_work ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cw1200_common*) ; 
 int /*<<< orphan*/  cw1200_rates ; 
 int /*<<< orphan*/  cw1200_scan_timeout ; 
 int /*<<< orphan*/  cw1200_scan_work ; 
 int /*<<< orphan*/  cw1200_set_beacon_wakeup_period_work ; 
 int /*<<< orphan*/  cw1200_set_cts_work ; 
 int /*<<< orphan*/  cw1200_set_tim_work ; 
 int /*<<< orphan*/  cw1200_skb_dtor ; 
 int /*<<< orphan*/ * cw1200_ttl ; 
 int /*<<< orphan*/  cw1200_unjoin_work ; 
 int /*<<< orphan*/  cw1200_update_filtering_work ; 
 int /*<<< orphan*/  cw1200_wep_key_work ; 
 int /*<<< orphan*/  cw1200_wowlan_support ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int) ; 
 struct ieee80211_hw* FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct cw1200_common*) ; 
 int /*<<< orphan*/  tx_policy_upload_work ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ieee80211_hw *FUNC21(const u8 *macaddr,
						const bool have_5ghz)
{
	int i, band;
	struct ieee80211_hw *hw;
	struct cw1200_common *priv;

	hw = FUNC11(sizeof(struct cw1200_common), &cw1200_ops);
	if (!hw)
		return NULL;

	priv = hw->priv;
	priv->hw = hw;
	priv->hw_type = -1;
	priv->mode = NL80211_IFTYPE_UNSPECIFIED;
	priv->rates = cw1200_rates; /* TODO: fetch from FW */
	priv->mcs_rates = cw1200_n_rates;
	if (cw1200_ba_rx_tids != -1)
		priv->ba_rx_tid_mask = cw1200_ba_rx_tids;
	else
		priv->ba_rx_tid_mask = 0xFF; /* Enable RX BLKACK for all TIDs */
	if (cw1200_ba_tx_tids != -1)
		priv->ba_tx_tid_mask = cw1200_ba_tx_tids;
	else
		priv->ba_tx_tid_mask = 0xff; /* Enable TX BLKACK for all TIDs */

	FUNC13(hw, NEED_DTIM_BEFORE_ASSOC);
	FUNC13(hw, TX_AMPDU_SETUP_IN_HW);
	FUNC13(hw, AMPDU_AGGREGATION);
	FUNC13(hw, CONNECTION_MONITOR);
	FUNC13(hw, REPORTS_TX_ACK_STATUS);
	FUNC13(hw, SUPPORTS_DYNAMIC_PS);
	FUNC13(hw, SIGNAL_DBM);
	FUNC13(hw, SUPPORTS_PS);

	hw->wiphy->interface_modes = FUNC0(NL80211_IFTYPE_STATION) |
					  FUNC0(NL80211_IFTYPE_ADHOC) |
					  FUNC0(NL80211_IFTYPE_AP) |
					  FUNC0(NL80211_IFTYPE_MESH_POINT) |
					  FUNC0(NL80211_IFTYPE_P2P_CLIENT) |
					  FUNC0(NL80211_IFTYPE_P2P_GO);

#ifdef CONFIG_PM
	hw->wiphy->wowlan = &cw1200_wowlan_support;
#endif

	hw->wiphy->flags |= WIPHY_FLAG_AP_UAPSD;

	hw->queues = 4;

	priv->rts_threshold = -1;

	hw->max_rates = 8;
	hw->max_rate_tries = 15;
	hw->extra_tx_headroom = WSM_TX_EXTRA_HEADROOM +
		8;  /* TKIP IV */

	hw->sta_data_size = sizeof(struct cw1200_sta_priv);

	hw->wiphy->bands[NL80211_BAND_2GHZ] = &cw1200_band_2ghz;
	if (have_5ghz)
		hw->wiphy->bands[NL80211_BAND_5GHZ] = &cw1200_band_5ghz;

	/* Channel params have to be cleared before registering wiphy again */
	for (band = 0; band < NUM_NL80211_BANDS; band++) {
		struct ieee80211_supported_band *sband = hw->wiphy->bands[band];
		if (!sband)
			continue;
		for (i = 0; i < sband->n_channels; i++) {
			sband->channels[i].flags = 0;
			sband->channels[i].max_antenna_gain = 0;
			sband->channels[i].max_power = 30;
		}
	}

	hw->wiphy->max_scan_ssids = 2;
	hw->wiphy->max_scan_ie_len = IEEE80211_MAX_DATA_LEN;

	if (macaddr)
		FUNC4(hw, (u8 *)macaddr);
	else
		FUNC4(hw, cw1200_mac_template);

	/* Fix up mac address if necessary */
	if (hw->wiphy->perm_addr[3] == 0 &&
	    hw->wiphy->perm_addr[4] == 0 &&
	    hw->wiphy->perm_addr[5] == 0) {
		FUNC10(&hw->wiphy->perm_addr[3], 3);
	}

	FUNC15(&priv->wsm_cmd_mux);
	FUNC15(&priv->conf_mutex);
	priv->workqueue = FUNC5("cw1200_wq");
	if (!priv->workqueue) {
		FUNC12(hw);
		return NULL;
	}

	FUNC16(&priv->scan.lock, 1);
	FUNC3(&priv->scan.work, cw1200_scan_work);
	FUNC1(&priv->scan.probe_work, cw1200_probe_work);
	FUNC1(&priv->scan.timeout, cw1200_scan_timeout);
	FUNC1(&priv->clear_recent_scan_work,
			  cw1200_clear_recent_scan_work);
	FUNC1(&priv->join_timeout, cw1200_join_timeout);
	FUNC3(&priv->unjoin_work, cw1200_unjoin_work);
	FUNC3(&priv->join_complete_work, cw1200_join_complete_work);
	FUNC3(&priv->wep_key_work, cw1200_wep_key_work);
	FUNC3(&priv->tx_policy_upload_work, tx_policy_upload_work);
	FUNC17(&priv->event_queue_lock);
	FUNC2(&priv->event_queue);
	FUNC3(&priv->event_handler, cw1200_event_handler);
	FUNC1(&priv->bss_loss_work, cw1200_bss_loss_work);
	FUNC3(&priv->bss_params_work, cw1200_bss_params_work);
	FUNC17(&priv->bss_loss_lock);
	FUNC17(&priv->ps_state_lock);
	FUNC3(&priv->set_cts_work, cw1200_set_cts_work);
	FUNC3(&priv->set_tim_work, cw1200_set_tim_work);
	FUNC3(&priv->multicast_start_work, cw1200_multicast_start_work);
	FUNC3(&priv->multicast_stop_work, cw1200_multicast_stop_work);
	FUNC3(&priv->link_id_work, cw1200_link_id_work);
	FUNC1(&priv->link_id_gc_work, cw1200_link_id_gc_work);
	FUNC3(&priv->linkid_reset_work, cw1200_link_id_reset);
	FUNC3(&priv->update_filtering_work, cw1200_update_filtering_work);
	FUNC3(&priv->set_beacon_wakeup_period_work,
		  cw1200_set_beacon_wakeup_period_work);
	FUNC18(&priv->mcast_timeout, cw1200_mcast_timeout, 0);

	if (FUNC9(&priv->tx_queue_stats,
				    CW1200_LINK_ID_MAX,
				    cw1200_skb_dtor,
				    priv)) {
		FUNC12(hw);
		return NULL;
	}

	for (i = 0; i < 4; ++i) {
		if (FUNC7(&priv->tx_queue[i],
				      &priv->tx_queue_stats, i, 16,
				      cw1200_ttl[i])) {
			for (; i > 0; i--)
				FUNC6(&priv->tx_queue[i - 1]);
			FUNC8(&priv->tx_queue_stats);
			FUNC12(hw);
			return NULL;
		}
	}

	FUNC14(&priv->channel_switch_done);
	FUNC14(&priv->wsm_cmd_wq);
	FUNC14(&priv->wsm_startup_done);
	FUNC14(&priv->ps_mode_switch_done);
	FUNC20(&priv->wsm_cmd_buf);
	FUNC17(&priv->wsm_cmd.lock);
	priv->wsm_cmd.done = 1;
	FUNC19(priv);

	return hw;
}