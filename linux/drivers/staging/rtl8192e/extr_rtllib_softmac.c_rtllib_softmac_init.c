
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtllib_network {int dummy; } ;
struct TYPE_4__ {int * txb; } ;
struct TYPE_3__ {int SlotNum; scalar_t__ NumRxUnicastOkInPeriod; scalar_t__ NumRxOkInPeriod; scalar_t__ NumTxOkInPeriod; scalar_t__ NumRecvDataInPeriod; scalar_t__ NumRecvBcnInPeriod; scalar_t__ SlotIndex; } ;
struct rtllib_device {int bIsAggregateFrame; int rate; int* Regdot11HTOperationalRateSet; int* Regdot11TxHTOperationalRateSet; int FirstIe_InScan; int actscanning; int beinretry; int is_set_key; int ps_task; int beacon_lock; int mgmt_tx_lock; int ips_mutex; int scan_mutex; int wx_mutex; int wx_sync_scan_wq; int associate_retry_wq; int softmac_scan_wq; int associate_procedure_wq; int associate_complete_wq; int start_ibss_wq; int link_change_wq; int beacon_timer; int associate_timer; TYPE_2__ tx_pending; int sta_sleep; int ps; int basic_rate; scalar_t__ proto_stoppping; scalar_t__ proto_started; scalar_t__ ssid_set; scalar_t__ wap_set; scalar_t__ softmac_features; scalar_t__ scanning_continue; scalar_t__ queue_stop; scalar_t__ assoc_id; TYPE_1__ LinkDetectInfo; int dev; int dot11d_info; scalar_t__* seq_ctrl; int state; int current_network; } ;
struct rt_dot11d_info {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_DELAYED_WORK_RSL (int *,void*,struct rtllib_device*) ;
 int INIT_WORK_RSL (int *,void*,struct rtllib_device*) ;
 int LPS_IS_WAKE ;
 int RTLLIB_DEFAULT_BASIC_RATE ;
 int RTLLIB_NOLINK ;
 int RTLLIB_PS_DISABLED ;
 int init_mgmt_queue (struct rtllib_device*) ;
 int kzalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int mutex_init (int *) ;
 int netdev_err (int ,char*) ;
 int rtllib_associate_abort_cb ;
 scalar_t__ rtllib_associate_complete_wq ;
 scalar_t__ rtllib_associate_procedure_wq ;
 scalar_t__ rtllib_associate_retry_wq ;
 scalar_t__ rtllib_link_change_wq ;
 int rtllib_send_beacon_cb ;
 scalar_t__ rtllib_softmac_scan_wq ;
 scalar_t__ rtllib_sta_ps ;
 scalar_t__ rtllib_start_ibss_wq ;
 scalar_t__ rtllib_wx_sync_scan_wq ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;
 int timer_setup (int *,int ,int ) ;

void rtllib_softmac_init(struct rtllib_device *ieee)
{
 int i;

 memset(&ieee->current_network, 0, sizeof(struct rtllib_network));

 ieee->state = RTLLIB_NOLINK;
 for (i = 0; i < 5; i++)
  ieee->seq_ctrl[i] = 0;
 ieee->dot11d_info = kzalloc(sizeof(struct rt_dot11d_info), GFP_ATOMIC);
 if (!ieee->dot11d_info)
  netdev_err(ieee->dev, "Can't alloc memory for DOT11D\n");
 ieee->LinkDetectInfo.SlotIndex = 0;
 ieee->LinkDetectInfo.SlotNum = 2;
 ieee->LinkDetectInfo.NumRecvBcnInPeriod = 0;
 ieee->LinkDetectInfo.NumRecvDataInPeriod = 0;
 ieee->LinkDetectInfo.NumTxOkInPeriod = 0;
 ieee->LinkDetectInfo.NumRxOkInPeriod = 0;
 ieee->LinkDetectInfo.NumRxUnicastOkInPeriod = 0;
 ieee->bIsAggregateFrame = 0;
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

 ieee->FirstIe_InScan = 0;
 ieee->actscanning = 0;
 ieee->beinretry = 0;
 ieee->is_set_key = 0;
 init_mgmt_queue(ieee);

 ieee->tx_pending.txb = ((void*)0);

 timer_setup(&ieee->associate_timer, rtllib_associate_abort_cb, 0);

 timer_setup(&ieee->beacon_timer, rtllib_send_beacon_cb, 0);

 INIT_DELAYED_WORK_RSL(&ieee->link_change_wq,
         (void *)rtllib_link_change_wq, ieee);
 INIT_DELAYED_WORK_RSL(&ieee->start_ibss_wq,
         (void *)rtllib_start_ibss_wq, ieee);
 INIT_WORK_RSL(&ieee->associate_complete_wq,
        (void *)rtllib_associate_complete_wq, ieee);
 INIT_DELAYED_WORK_RSL(&ieee->associate_procedure_wq,
         (void *)rtllib_associate_procedure_wq, ieee);
 INIT_DELAYED_WORK_RSL(&ieee->softmac_scan_wq,
         (void *)rtllib_softmac_scan_wq, ieee);
 INIT_DELAYED_WORK_RSL(&ieee->associate_retry_wq,
         (void *)rtllib_associate_retry_wq, ieee);
 INIT_WORK_RSL(&ieee->wx_sync_scan_wq, (void *)rtllib_wx_sync_scan_wq,
        ieee);

 mutex_init(&ieee->wx_mutex);
 mutex_init(&ieee->scan_mutex);
 mutex_init(&ieee->ips_mutex);

 spin_lock_init(&ieee->mgmt_tx_lock);
 spin_lock_init(&ieee->beacon_lock);

 tasklet_init(&ieee->ps_task,
      (void(*)(unsigned long)) rtllib_sta_ps,
      (unsigned long)ieee);

}
