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
typedef  scalar_t__ u8 ;
struct TYPE_8__ {int /*<<< orphan*/  sta_hlid_map; int /*<<< orphan*/ * ucast_rate_idx; int /*<<< orphan*/  bcast_rate_idx; int /*<<< orphan*/  mgmt_rate_idx; void* global_hlid; void* bcast_hlid; } ;
struct TYPE_7__ {int /*<<< orphan*/  klv_template_id; int /*<<< orphan*/  p2p_rate_idx; int /*<<< orphan*/  ap_rate_idx; int /*<<< orphan*/  basic_rate_idx; void* hlid; } ;
struct wl12xx_vif {scalar_t__ bss_type; int /*<<< orphan*/  pending_auth_complete_work; int /*<<< orphan*/  channel_switch_work; int /*<<< orphan*/  connection_loss_work; int /*<<< orphan*/  rc_update_work; int /*<<< orphan*/  rx_streaming_disable_work; int /*<<< orphan*/  rx_streaming_enable_work; int /*<<< orphan*/  rx_streaming_timer; void* dev_role_id; void* role_id; TYPE_3__ ap; int /*<<< orphan*/  list; int /*<<< orphan*/ * probereq; TYPE_2__ sta; void* dev_hlid; int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {scalar_t__ sta_sleep_auth; } ;
struct TYPE_10__ {TYPE_4__ conn; } ;
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/ * req; int /*<<< orphan*/  scanned_ch; } ;
struct wl1271 {scalar_t__ state; scalar_t__ ap_count; int /*<<< orphan*/  mutex; TYPE_5__ conf; scalar_t__ sta_count; int /*<<< orphan*/  ap_event_mask; int /*<<< orphan*/  event_mask; int /*<<< orphan*/  flags; struct wl12xx_vif* last_wlvif; int /*<<< orphan*/  dev; int /*<<< orphan*/  hw; struct ieee80211_vif* roc_vif; struct wl12xx_vif* sched_vif; TYPE_1__ scan; struct wl12xx_vif* scan_wlvif; } ;
struct ieee80211_vif {int dummy; } ;
struct cfg80211_scan_info {int aborted; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_AP_BSS ; 
 scalar_t__ BSS_TYPE_IBSS ; 
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int CONF_TX_MAX_AC_COUNT ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  WL1271_FLAG_INTENDED_FW_RECOVERY ; 
 int /*<<< orphan*/  WL1271_FLAG_RECOVERY_IN_PROGRESS ; 
 scalar_t__ WL1271_PSM_ELP ; 
 scalar_t__ WL1271_PSM_ILLEGAL ; 
 scalar_t__ WL1271_SCAN_STATE_IDLE ; 
 void* WL12XX_INVALID_LINK_ID ; 
 void* WL12XX_INVALID_ROLE_ID ; 
 scalar_t__ WLCORE_STATE_OFF ; 
 int /*<<< orphan*/  WLVIF_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct wl1271*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC19 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int FUNC21 (struct wl1271*,void**) ; 
 scalar_t__ FUNC22 (struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC23 (struct wl1271*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC25 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC26 (struct wl1271*,struct wl12xx_vif*) ; 
 struct wl12xx_vif* FUNC27 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC28 (struct wl1271*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct wl12xx_vif*) ; 

__attribute__((used)) static void FUNC30(struct wl1271 *wl,
					 struct ieee80211_vif *vif,
					 bool reset_tx_queues)
{
	struct wl12xx_vif *wlvif = FUNC27(vif);
	int i, ret;
	bool is_ap = (wlvif->bss_type == BSS_TYPE_AP_BSS);

	FUNC17(DEBUG_MAC80211, "mac80211 remove interface");

	if (!FUNC14(WLVIF_FLAG_INITIALIZED, &wlvif->flags))
		return;

	/* because of hardware recovery, we may get here twice */
	if (wl->state == WLCORE_STATE_OFF)
		return;

	FUNC20("down");

	if (wl->scan.state != WL1271_SCAN_STATE_IDLE &&
	    wl->scan_wlvif == wlvif) {
		struct cfg80211_scan_info info = {
			.aborted = true,
		};

		/*
		 * Rearm the tx watchdog just before idling scan. This
		 * prevents just-finished scans from triggering the watchdog
		 */
		FUNC24(wl);

		wl->scan.state = WL1271_SCAN_STATE_IDLE;
		FUNC7(wl->scan.scanned_ch, 0, sizeof(wl->scan.scanned_ch));
		wl->scan_wlvif = NULL;
		wl->scan.req = NULL;
		FUNC5(wl->hw, &info);
	}

	if (wl->sched_vif == wlvif)
		wl->sched_vif = NULL;

	if (wl->roc_vif == vif) {
		wl->roc_vif = NULL;
		FUNC4(wl->hw);
	}

	if (!FUNC15(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags)) {
		/* disable active roles */
		ret = FUNC10(wl->dev);
		if (ret < 0) {
			FUNC13(wl->dev);
			goto deinit;
		}

		if (wlvif->bss_type == BSS_TYPE_STA_BSS ||
		    wlvif->bss_type == BSS_TYPE_IBSS) {
			if (FUNC22(wlvif))
				FUNC25(wl, wlvif);
		}

		if (!FUNC29(wlvif)) {
			ret = FUNC21(wl, &wlvif->role_id);
			if (ret < 0)
				goto deinit;
		} else {
			ret = FUNC21(wl, &wlvif->dev_role_id);
			if (ret < 0)
				goto deinit;
		}

		FUNC11(wl->dev);
		FUNC12(wl->dev);
	}
deinit:
	FUNC26(wl, wlvif);

	/* clear all hlids (except system_hlid) */
	wlvif->dev_hlid = WL12XX_INVALID_LINK_ID;

	if (wlvif->bss_type == BSS_TYPE_STA_BSS ||
	    wlvif->bss_type == BSS_TYPE_IBSS) {
		wlvif->sta.hlid = WL12XX_INVALID_LINK_ID;
		FUNC23(wl, &wlvif->sta.basic_rate_idx);
		FUNC23(wl, &wlvif->sta.ap_rate_idx);
		FUNC23(wl, &wlvif->sta.p2p_rate_idx);
		FUNC28(wl, &wlvif->sta.klv_template_id);
	} else {
		wlvif->ap.bcast_hlid = WL12XX_INVALID_LINK_ID;
		wlvif->ap.global_hlid = WL12XX_INVALID_LINK_ID;
		FUNC23(wl, &wlvif->ap.mgmt_rate_idx);
		FUNC23(wl, &wlvif->ap.bcast_rate_idx);
		for (i = 0; i < CONF_TX_MAX_AC_COUNT; i++)
			FUNC23(wl,
						&wlvif->ap.ucast_rate_idx[i]);
		FUNC19(wl, wlvif);
	}

	FUNC3(wlvif->probereq);
	wlvif->probereq = NULL;
	if (wl->last_wlvif == wlvif)
		wl->last_wlvif = NULL;
	FUNC6(&wlvif->list);
	FUNC7(wlvif->ap.sta_hlid_map, 0, sizeof(wlvif->ap.sta_hlid_map));
	wlvif->role_id = WL12XX_INVALID_ROLE_ID;
	wlvif->dev_role_id = WL12XX_INVALID_ROLE_ID;

	if (is_ap)
		wl->ap_count--;
	else
		wl->sta_count--;

	/*
	 * Last AP, have more stations. Configure sleep auth according to STA.
	 * Don't do thin on unintended recovery.
	 */
	if (FUNC15(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags) &&
	    !FUNC15(WL1271_FLAG_INTENDED_FW_RECOVERY, &wl->flags))
		goto unlock;

	if (wl->ap_count == 0 && is_ap) {
		/* mask ap events */
		wl->event_mask &= ~wl->ap_event_mask;
		FUNC18(wl);
	}

	if (wl->ap_count == 0 && is_ap && wl->sta_count) {
		u8 sta_auth = wl->conf.conn.sta_sleep_auth;
		/* Configure for power according to debugfs */
		if (sta_auth != WL1271_PSM_ILLEGAL)
			FUNC16(wl, sta_auth);
		/* Configure for ELP power saving */
		else
			FUNC16(wl, WL1271_PSM_ELP);
	}

unlock:
	FUNC9(&wl->mutex);

	FUNC2(&wlvif->rx_streaming_timer);
	FUNC1(&wlvif->rx_streaming_enable_work);
	FUNC1(&wlvif->rx_streaming_disable_work);
	FUNC1(&wlvif->rc_update_work);
	FUNC0(&wlvif->connection_loss_work);
	FUNC0(&wlvif->channel_switch_work);
	FUNC0(&wlvif->pending_auth_complete_work);

	FUNC8(&wl->mutex);
}