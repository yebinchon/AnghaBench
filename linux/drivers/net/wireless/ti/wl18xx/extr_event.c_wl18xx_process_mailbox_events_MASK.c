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
struct wl18xx_event_mailbox {int number_of_scan_results; int number_of_sched_scan_results; size_t rx_ba_link_id; size_t rx_ba_win_size; int /*<<< orphan*/  sc_pwd; int /*<<< orphan*/  sc_pwd_len; int /*<<< orphan*/  sc_ssid; int /*<<< orphan*/  sc_ssid_len; int /*<<< orphan*/  sc_sync_band; int /*<<< orphan*/  sc_sync_channel; int /*<<< orphan*/  inactive_sta_bitmap; int /*<<< orphan*/  tx_retry_exceeded_bitmap; int /*<<< orphan*/  channel_switch_role_id_bitmap; int /*<<< orphan*/  bss_loss_bitmap; int /*<<< orphan*/  rx_ba_allowed_bitmap; int /*<<< orphan*/  rx_ba_role_id_bitmap; int /*<<< orphan*/  rssi_snr_trigger_metric; int /*<<< orphan*/  radar_type; int /*<<< orphan*/  radar_channel; int /*<<< orphan*/  time_sync_tsf_low_lsb; int /*<<< orphan*/  time_sync_tsf_low_msb; int /*<<< orphan*/  time_sync_tsf_high_lsb; int /*<<< orphan*/  time_sync_tsf_high_msb; int /*<<< orphan*/  events_vector; } ;
struct wl12xx_vif {scalar_t__ bss_type; } ;
struct wl1271 {TYPE_2__* links; int /*<<< orphan*/  hw; int /*<<< orphan*/  radar_debug_mode; scalar_t__ scan_wlvif; struct wl18xx_event_mailbox* mbox; } ;
struct TYPE_3__ {size_t* bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_sta {size_t max_rx_aggregation_subframes; } ;
struct TYPE_4__ {size_t* addr; int /*<<< orphan*/  ba_bitmap; struct wl12xx_vif* wlvif; } ;

/* Variables and functions */
 int BA_SESSION_RX_CONSTRAINT_EVENT_ID ; 
 int BSS_LOSS_EVENT_ID ; 
 scalar_t__ BSS_TYPE_AP_BSS ; 
 int CHANNEL_SWITCH_COMPLETE_EVENT_ID ; 
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int DUMMY_PACKET_EVENT_ID ; 
 int FW_LOGGER_INDICATION ; 
 int INACTIVE_STA_EVENT_ID ; 
 int MAX_TX_FAILURE_EVENT_ID ; 
 int PERIODIC_SCAN_COMPLETE_EVENT_ID ; 
 int PERIODIC_SCAN_REPORT_EVENT_ID ; 
 int RADAR_DETECTED_EVENT_ID ; 
 int REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID ; 
 int RSSI_SNR_TRIGGER_0_EVENT_ID ; 
 int RX_BA_WIN_SIZE_CHANGE_EVENT_ID ; 
 int SCAN_COMPLETE_EVENT_ID ; 
 int SMART_CONFIG_DECODE_EVENT_ID ; 
 int SMART_CONFIG_SYNC_EVENT_ID ; 
 int TIME_SYNC_EVENT_ID ; 
 struct ieee80211_sta* FUNC0 (struct ieee80211_vif*,size_t const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_vif* FUNC7 (struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC14 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC15 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC18 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct wl1271*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC22 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC24(struct wl1271 *wl)
{
	struct wl18xx_event_mailbox *mbox = wl->mbox;
	u32 vector;

	vector = FUNC4(mbox->events_vector);
	FUNC5(DEBUG_EVENT, "MBOX vector: 0x%x", vector);

	if (vector & SCAN_COMPLETE_EVENT_ID) {
		FUNC5(DEBUG_EVENT, "scan results: %d",
			     mbox->number_of_scan_results);

		if (wl->scan_wlvif)
			FUNC9(wl, wl->scan_wlvif);
	}

	if (vector & TIME_SYNC_EVENT_ID)
		FUNC20(wl,
			mbox->time_sync_tsf_high_msb,
			mbox->time_sync_tsf_high_lsb,
			mbox->time_sync_tsf_low_msb,
			mbox->time_sync_tsf_low_lsb);

	if (vector & RADAR_DETECTED_EVENT_ID) {
		FUNC6("radar event: channel %d type %s",
			    mbox->radar_channel,
			    FUNC8(mbox->radar_type));

		if (!wl->radar_debug_mode)
			FUNC1(wl->hw);
	}

	if (vector & PERIODIC_SCAN_REPORT_EVENT_ID) {
		FUNC5(DEBUG_EVENT,
			     "PERIODIC_SCAN_REPORT_EVENT (results %d)",
			     mbox->number_of_sched_scan_results);

		FUNC21(wl);
	}

	if (vector & PERIODIC_SCAN_COMPLETE_EVENT_ID)
		FUNC19(wl, 1);

	if (vector & RSSI_SNR_TRIGGER_0_EVENT_ID)
		FUNC18(wl, mbox->rssi_snr_trigger_metric);

	if (vector & BA_SESSION_RX_CONSTRAINT_EVENT_ID)
		FUNC10(wl,
				FUNC3(mbox->rx_ba_role_id_bitmap),
				FUNC3(mbox->rx_ba_allowed_bitmap));

	if (vector & BSS_LOSS_EVENT_ID)
		FUNC11(wl,
					 FUNC3(mbox->bss_loss_bitmap));

	if (vector & CHANNEL_SWITCH_COMPLETE_EVENT_ID)
		FUNC12(wl,
			FUNC3(mbox->channel_switch_role_id_bitmap),
			true);

	if (vector & DUMMY_PACKET_EVENT_ID)
		FUNC13(wl);

	/*
	 * "TX retries exceeded" has a different meaning according to mode.
	 * In AP mode the offending station is disconnected.
	 */
	if (vector & MAX_TX_FAILURE_EVENT_ID)
		FUNC16(wl,
				FUNC3(mbox->tx_retry_exceeded_bitmap));

	if (vector & INACTIVE_STA_EVENT_ID)
		FUNC15(wl,
				FUNC3(mbox->inactive_sta_bitmap));

	if (vector & REMAIN_ON_CHANNEL_COMPLETE_EVENT_ID)
		FUNC17(wl);

	if (vector & SMART_CONFIG_SYNC_EVENT_ID)
		FUNC23(wl, mbox->sc_sync_channel,
					       mbox->sc_sync_band);

	if (vector & SMART_CONFIG_DECODE_EVENT_ID)
		FUNC22(wl,
						 mbox->sc_ssid_len,
						 mbox->sc_ssid,
						 mbox->sc_pwd_len,
						 mbox->sc_pwd);
	if (vector & FW_LOGGER_INDICATION)
		FUNC14(wl);

	if (vector & RX_BA_WIN_SIZE_CHANGE_EVENT_ID) {
		struct wl12xx_vif *wlvif;
		struct ieee80211_vif *vif;
		struct ieee80211_sta *sta;
		u8 link_id = mbox->rx_ba_link_id;
		u8 win_size = mbox->rx_ba_win_size;
		const u8 *addr;

		wlvif = wl->links[link_id].wlvif;
		vif = FUNC7(wlvif);

		/* Update RX aggregation window size and call
		 * MAC routine to stop active RX aggregations for this link
		 */
		if (wlvif->bss_type != BSS_TYPE_AP_BSS)
			addr = vif->bss_conf.bssid;
		else
			addr = wl->links[link_id].addr;

		sta = FUNC0(vif, addr);
		if (sta) {
			sta->max_rx_aggregation_subframes = win_size;
			FUNC2(vif,
						wl->links[link_id].ba_bitmap,
						addr);
		}
	}

	return 0;
}