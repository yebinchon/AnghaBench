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
struct rt_dot11d_info {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * txb; } ;
struct TYPE_3__ {int SlotNum; scalar_t__ NumRecvDataInPeriod; scalar_t__ NumRecvBcnInPeriod; } ;
struct ieee80211_device {int rate; int* Regdot11HTOperationalRateSet; int actscanning; int beinretry; int is_set_key; int* sta_edca_param; int aggregation; int enable_rx_imm_BA; int /*<<< orphan*/  ps_task; int /*<<< orphan*/  beacon_lock; int /*<<< orphan*/  mgmt_tx_lock; int /*<<< orphan*/  scan_mutex; int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  wx_sync_scan_wq; int /*<<< orphan*/  associate_retry_wq; int /*<<< orphan*/  softmac_scan_wq; int /*<<< orphan*/  associate_procedure_wq; int /*<<< orphan*/  associate_complete_wq; int /*<<< orphan*/  start_ibss_wq; int /*<<< orphan*/  beacon_timer; int /*<<< orphan*/  associate_timer; TYPE_2__ tx_pending; scalar_t__ sta_sleep; int /*<<< orphan*/  ps; int /*<<< orphan*/  basic_rate; scalar_t__ proto_started; scalar_t__ ssid_set; scalar_t__ wap_set; scalar_t__ softmac_features; scalar_t__ scanning; scalar_t__ queue_stop; scalar_t__ assoc_id; TYPE_1__ LinkDetectInfo; int /*<<< orphan*/  dot11d_info; scalar_t__* seq_ctrl; scalar_t__ sync_scan_hurryup; int /*<<< orphan*/  state; int /*<<< orphan*/  current_network; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IEEE80211_DEFAULT_BASIC_RATE ; 
 int /*<<< orphan*/  IEEE80211_DL_ERR ; 
 int /*<<< orphan*/  IEEE80211_NOLINK ; 
 int /*<<< orphan*/  IEEE80211_PS_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ieee80211_associate_abort_cb ; 
 int /*<<< orphan*/  ieee80211_associate_complete_wq ; 
 int /*<<< orphan*/  ieee80211_associate_procedure_wq ; 
 int /*<<< orphan*/  ieee80211_associate_retry_wq ; 
 int /*<<< orphan*/  ieee80211_send_beacon_cb ; 
 int /*<<< orphan*/  ieee80211_softmac_scan_wq ; 
 scalar_t__ ieee80211_sta_ps ; 
 int /*<<< orphan*/  ieee80211_start_ibss_wq ; 
 int /*<<< orphan*/  ieee80211_wx_sync_scan_wq ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct ieee80211_device *ieee)
{
	int i;
	FUNC5(&ieee->current_network, 0, sizeof(struct ieee80211_network));

	ieee->state = IEEE80211_NOLINK;
	ieee->sync_scan_hurryup = 0;
	for (i = 0; i < 5; i++)
		ieee->seq_ctrl[i] = 0;

	ieee->dot11d_info = FUNC4(sizeof(struct rt_dot11d_info), GFP_KERNEL);
	if (!ieee->dot11d_info)
		FUNC0(IEEE80211_DL_ERR, "can't alloc memory for DOT11D\n");
	//added for  AP roaming
	ieee->LinkDetectInfo.SlotNum = 2;
	ieee->LinkDetectInfo.NumRecvBcnInPeriod = 0;
	ieee->LinkDetectInfo.NumRecvDataInPeriod = 0;

	ieee->assoc_id = 0;
	ieee->queue_stop = 0;
	ieee->scanning = 0;
	ieee->softmac_features = 0; //so IEEE2100-like driver are happy
	ieee->wap_set = 0;
	ieee->ssid_set = 0;
	ieee->proto_started = 0;
	ieee->basic_rate = IEEE80211_DEFAULT_BASIC_RATE;
	ieee->rate = 22;
	ieee->ps = IEEE80211_PS_DISABLED;
	ieee->sta_sleep = 0;
	ieee->Regdot11HTOperationalRateSet[0] = 0xff;//support MCS 0~7
	ieee->Regdot11HTOperationalRateSet[1] = 0xff;//support MCS 8~15
	ieee->Regdot11HTOperationalRateSet[4] = 0x01;
	//added by amy
	ieee->actscanning = false;
	ieee->beinretry = false;
	ieee->is_set_key = false;
	FUNC3(ieee);

	ieee->sta_edca_param[0] = 0x0000A403;
	ieee->sta_edca_param[1] = 0x0000A427;
	ieee->sta_edca_param[2] = 0x005E4342;
	ieee->sta_edca_param[3] = 0x002F3262;
	ieee->aggregation = true;
	ieee->enable_rx_imm_BA = true;
	ieee->tx_pending.txb = NULL;

	FUNC9(&ieee->associate_timer, ieee80211_associate_abort_cb, 0);

	FUNC9(&ieee->beacon_timer, ieee80211_send_beacon_cb, 0);

	FUNC1(&ieee->start_ibss_wq, ieee80211_start_ibss_wq);
	FUNC2(&ieee->associate_complete_wq, ieee80211_associate_complete_wq);
	FUNC2(&ieee->associate_procedure_wq, ieee80211_associate_procedure_wq);
	FUNC1(&ieee->softmac_scan_wq, ieee80211_softmac_scan_wq);
	FUNC1(&ieee->associate_retry_wq, ieee80211_associate_retry_wq);
	FUNC2(&ieee->wx_sync_scan_wq, ieee80211_wx_sync_scan_wq);

	FUNC6(&ieee->wx_mutex);
	FUNC6(&ieee->scan_mutex);

	FUNC7(&ieee->mgmt_tx_lock);
	FUNC7(&ieee->beacon_lock);

	FUNC8(&ieee->ps_task,
		     (void(*)(unsigned long)) ieee80211_sta_ps,
		     (unsigned long)ieee);
}