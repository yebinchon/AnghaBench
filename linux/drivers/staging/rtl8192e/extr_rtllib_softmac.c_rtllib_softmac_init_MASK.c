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
struct rtllib_network {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * txb; } ;
struct TYPE_3__ {int SlotNum; scalar_t__ NumRxUnicastOkInPeriod; scalar_t__ NumRxOkInPeriod; scalar_t__ NumTxOkInPeriod; scalar_t__ NumRecvDataInPeriod; scalar_t__ NumRecvBcnInPeriod; scalar_t__ SlotIndex; } ;
struct rtllib_device {int bIsAggregateFrame; int rate; int* Regdot11HTOperationalRateSet; int* Regdot11TxHTOperationalRateSet; int FirstIe_InScan; int actscanning; int beinretry; int is_set_key; int /*<<< orphan*/  ps_task; int /*<<< orphan*/  beacon_lock; int /*<<< orphan*/  mgmt_tx_lock; int /*<<< orphan*/  ips_mutex; int /*<<< orphan*/  scan_mutex; int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  wx_sync_scan_wq; int /*<<< orphan*/  associate_retry_wq; int /*<<< orphan*/  softmac_scan_wq; int /*<<< orphan*/  associate_procedure_wq; int /*<<< orphan*/  associate_complete_wq; int /*<<< orphan*/  start_ibss_wq; int /*<<< orphan*/  link_change_wq; int /*<<< orphan*/  beacon_timer; int /*<<< orphan*/  associate_timer; TYPE_2__ tx_pending; int /*<<< orphan*/  sta_sleep; int /*<<< orphan*/  ps; int /*<<< orphan*/  basic_rate; scalar_t__ proto_stoppping; scalar_t__ proto_started; scalar_t__ ssid_set; scalar_t__ wap_set; scalar_t__ softmac_features; scalar_t__ scanning_continue; scalar_t__ queue_stop; scalar_t__ assoc_id; TYPE_1__ LinkDetectInfo; int /*<<< orphan*/  dev; int /*<<< orphan*/  dot11d_info; scalar_t__* seq_ctrl; int /*<<< orphan*/  state; int /*<<< orphan*/  current_network; } ;
struct rt_dot11d_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,struct rtllib_device*) ; 
 int /*<<< orphan*/  LPS_IS_WAKE ; 
 int /*<<< orphan*/  RTLLIB_DEFAULT_BASIC_RATE ; 
 int /*<<< orphan*/  RTLLIB_NOLINK ; 
 int /*<<< orphan*/  RTLLIB_PS_DISABLED ; 
 int /*<<< orphan*/  FUNC2 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rtllib_associate_abort_cb ; 
 scalar_t__ rtllib_associate_complete_wq ; 
 scalar_t__ rtllib_associate_procedure_wq ; 
 scalar_t__ rtllib_associate_retry_wq ; 
 scalar_t__ rtllib_link_change_wq ; 
 int /*<<< orphan*/  rtllib_send_beacon_cb ; 
 scalar_t__ rtllib_softmac_scan_wq ; 
 scalar_t__ rtllib_sta_ps ; 
 scalar_t__ rtllib_start_ibss_wq ; 
 scalar_t__ rtllib_wx_sync_scan_wq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct rtllib_device *ieee)
{
	int i;

	FUNC4(&ieee->current_network, 0, sizeof(struct rtllib_network));

	ieee->state = RTLLIB_NOLINK;
	for (i = 0; i < 5; i++)
		ieee->seq_ctrl[i] = 0;
	ieee->dot11d_info = FUNC3(sizeof(struct rt_dot11d_info), GFP_ATOMIC);
	if (!ieee->dot11d_info)
		FUNC6(ieee->dev, "Can't alloc memory for DOT11D\n");
	ieee->LinkDetectInfo.SlotIndex = 0;
	ieee->LinkDetectInfo.SlotNum = 2;
	ieee->LinkDetectInfo.NumRecvBcnInPeriod = 0;
	ieee->LinkDetectInfo.NumRecvDataInPeriod = 0;
	ieee->LinkDetectInfo.NumTxOkInPeriod = 0;
	ieee->LinkDetectInfo.NumRxOkInPeriod = 0;
	ieee->LinkDetectInfo.NumRxUnicastOkInPeriod = 0;
	ieee->bIsAggregateFrame = false;
	ieee->assoc_id = 0;
	ieee->queue_stop = 0;
	ieee->scanning_continue = 0;
	ieee->softmac_features = 0;
	ieee->wap_set = 0;
	ieee->ssid_set = 0;
	ieee->proto_started = 0;
	ieee->proto_stoppping = 0;
	ieee->basic_rate = RTLLIB_DEFAULT_BASIC_RATE;
	ieee->rate = 22;
	ieee->ps = RTLLIB_PS_DISABLED;
	ieee->sta_sleep = LPS_IS_WAKE;

	ieee->Regdot11HTOperationalRateSet[0] = 0xff;
	ieee->Regdot11HTOperationalRateSet[1] = 0xff;
	ieee->Regdot11HTOperationalRateSet[4] = 0x01;

	ieee->Regdot11TxHTOperationalRateSet[0] = 0xff;
	ieee->Regdot11TxHTOperationalRateSet[1] = 0xff;
	ieee->Regdot11TxHTOperationalRateSet[4] = 0x01;

	ieee->FirstIe_InScan = false;
	ieee->actscanning = false;
	ieee->beinretry = false;
	ieee->is_set_key = false;
	FUNC2(ieee);

	ieee->tx_pending.txb = NULL;

	FUNC9(&ieee->associate_timer, rtllib_associate_abort_cb, 0);

	FUNC9(&ieee->beacon_timer, rtllib_send_beacon_cb, 0);

	FUNC0(&ieee->link_change_wq,
			      (void *)rtllib_link_change_wq, ieee);
	FUNC0(&ieee->start_ibss_wq,
			      (void *)rtllib_start_ibss_wq, ieee);
	FUNC1(&ieee->associate_complete_wq,
		      (void *)rtllib_associate_complete_wq, ieee);
	FUNC0(&ieee->associate_procedure_wq,
			      (void *)rtllib_associate_procedure_wq, ieee);
	FUNC0(&ieee->softmac_scan_wq,
			      (void *)rtllib_softmac_scan_wq, ieee);
	FUNC0(&ieee->associate_retry_wq,
			      (void *)rtllib_associate_retry_wq, ieee);
	FUNC1(&ieee->wx_sync_scan_wq, (void *)rtllib_wx_sync_scan_wq,
		      ieee);

	FUNC5(&ieee->wx_mutex);
	FUNC5(&ieee->scan_mutex);
	FUNC5(&ieee->ips_mutex);

	FUNC7(&ieee->mgmt_tx_lock);
	FUNC7(&ieee->beacon_lock);

	FUNC8(&ieee->ps_task,
	     (void(*)(unsigned long)) rtllib_sta_ps,
	     (unsigned long)ieee);

}