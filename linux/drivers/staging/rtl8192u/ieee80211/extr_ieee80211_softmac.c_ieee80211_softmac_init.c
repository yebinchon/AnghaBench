
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt_dot11d_info {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct TYPE_4__ {int * txb; } ;
struct TYPE_3__ {int SlotNum; scalar_t__ NumRecvDataInPeriod; scalar_t__ NumRecvBcnInPeriod; } ;
struct ieee80211_device {int rate; int* Regdot11HTOperationalRateSet; int actscanning; int beinretry; int is_set_key; int* sta_edca_param; int aggregation; int enable_rx_imm_BA; int ps_task; int beacon_lock; int mgmt_tx_lock; int scan_mutex; int wx_mutex; int wx_sync_scan_wq; int associate_retry_wq; int softmac_scan_wq; int associate_procedure_wq; int associate_complete_wq; int start_ibss_wq; int beacon_timer; int associate_timer; TYPE_2__ tx_pending; scalar_t__ sta_sleep; int ps; int basic_rate; scalar_t__ proto_started; scalar_t__ ssid_set; scalar_t__ wap_set; scalar_t__ softmac_features; scalar_t__ scanning; scalar_t__ queue_stop; scalar_t__ assoc_id; TYPE_1__ LinkDetectInfo; int dot11d_info; scalar_t__* seq_ctrl; scalar_t__ sync_scan_hurryup; int state; int current_network; } ;


 int GFP_KERNEL ;
 int IEEE80211_DEBUG (int ,char*) ;
 int IEEE80211_DEFAULT_BASIC_RATE ;
 int IEEE80211_DL_ERR ;
 int IEEE80211_NOLINK ;
 int IEEE80211_PS_DISABLED ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int ieee80211_associate_abort_cb ;
 int ieee80211_associate_complete_wq ;
 int ieee80211_associate_procedure_wq ;
 int ieee80211_associate_retry_wq ;
 int ieee80211_send_beacon_cb ;
 int ieee80211_softmac_scan_wq ;
 scalar_t__ ieee80211_sta_ps ;
 int ieee80211_start_ibss_wq ;
 int ieee80211_wx_sync_scan_wq ;
 int init_mgmt_queue (struct ieee80211_device*) ;
 int kzalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;
 int timer_setup (int *,int ,int ) ;

void ieee80211_softmac_init(struct ieee80211_device *ieee)
{
 int i;
 memset(&ieee->current_network, 0, sizeof(struct ieee80211_network));

 ieee->state = IEEE80211_NOLINK;
 ieee->sync_scan_hurryup = 0;
 for (i = 0; i < 5; i++)
  ieee->seq_ctrl[i] = 0;

 ieee->dot11d_info = kzalloc(sizeof(struct rt_dot11d_info), GFP_KERNEL);
 if (!ieee->dot11d_info)
  IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc memory for DOT11D\n");

 ieee->LinkDetectInfo.SlotNum = 2;
 ieee->LinkDetectInfo.NumRecvBcnInPeriod = 0;
 ieee->LinkDetectInfo.NumRecvDataInPeriod = 0;

 ieee->assoc_id = 0;
 ieee->queue_stop = 0;
 ieee->scanning = 0;
 ieee->softmac_features = 0;
 ieee->wap_set = 0;
 ieee->ssid_set = 0;
 ieee->proto_started = 0;
 ieee->basic_rate = IEEE80211_DEFAULT_BASIC_RATE;
 ieee->rate = 22;
 ieee->ps = IEEE80211_PS_DISABLED;
 ieee->sta_sleep = 0;
 ieee->Regdot11HTOperationalRateSet[0] = 0xff;
 ieee->Regdot11HTOperationalRateSet[1] = 0xff;
 ieee->Regdot11HTOperationalRateSet[4] = 0x01;

 ieee->actscanning = 0;
 ieee->beinretry = 0;
 ieee->is_set_key = 0;
 init_mgmt_queue(ieee);

 ieee->sta_edca_param[0] = 0x0000A403;
 ieee->sta_edca_param[1] = 0x0000A427;
 ieee->sta_edca_param[2] = 0x005E4342;
 ieee->sta_edca_param[3] = 0x002F3262;
 ieee->aggregation = 1;
 ieee->enable_rx_imm_BA = 1;
 ieee->tx_pending.txb = ((void*)0);

 timer_setup(&ieee->associate_timer, ieee80211_associate_abort_cb, 0);

 timer_setup(&ieee->beacon_timer, ieee80211_send_beacon_cb, 0);

 INIT_DELAYED_WORK(&ieee->start_ibss_wq, ieee80211_start_ibss_wq);
 INIT_WORK(&ieee->associate_complete_wq, ieee80211_associate_complete_wq);
 INIT_WORK(&ieee->associate_procedure_wq, ieee80211_associate_procedure_wq);
 INIT_DELAYED_WORK(&ieee->softmac_scan_wq, ieee80211_softmac_scan_wq);
 INIT_DELAYED_WORK(&ieee->associate_retry_wq, ieee80211_associate_retry_wq);
 INIT_WORK(&ieee->wx_sync_scan_wq, ieee80211_wx_sync_scan_wq);

 mutex_init(&ieee->wx_mutex);
 mutex_init(&ieee->scan_mutex);

 spin_lock_init(&ieee->mgmt_tx_lock);
 spin_lock_init(&ieee->beacon_lock);

 tasklet_init(&ieee->ps_task,
       (void(*)(unsigned long)) ieee80211_sta_ps,
       (unsigned long)ieee);
}
