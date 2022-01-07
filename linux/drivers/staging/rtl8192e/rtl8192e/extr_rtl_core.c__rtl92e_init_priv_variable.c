
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct sw_cam_table {int dummy; } ;
struct rt_firmware {int dummy; } ;
struct r8192_priv {int up_first_time; int blinked_ingpio; int bDriverIsGoingToUnload; int being_init_adapter; int initialized_at_probe; int bdisable_nic; int bfirst_init; int txringcount; int rxbuffersize; int chan; int RegChannelPlan; int promisc; int bcck_in_ch14; int bfsync_processing; int CckPwEnl; int ScanDelay; int bForcedSilentReset; int bDisableNormalResetCheck; int force_reset; int bHwRadioOff; int RegRfOff; int isRFOff; int bInPowerSaveMode; int RFChangeInProgress; int SetRFPowerStateInProgress; TYPE_4__* rtllib; int skb_queue; int pFirmware; int card_type; scalar_t__ bHwRfOffAction; scalar_t__ RxCounter; int InterruptLog; int ResetProgress; scalar_t__ rfc_txpowertrackingindex; scalar_t__ rfa_txpowertrackingindex; scalar_t__ CCKPresentAttentuation; int retry_data; int retry_rts; scalar_t__ irq_enabled; int rxringcount; scalar_t__ polling_timer_on; int dot11CurrentPreambleMode; int AcmMethod; } ;
struct net_device {int flags; } ;
struct log_int_8190 {int dummy; } ;
struct TYPE_6__ {int beacon_interval; } ;
struct TYPE_5__ {int bInactivePs; int bIPSModeBackup; int bLeisurePs; int bFwCtrlLPS; } ;
struct TYPE_7__ {int bPromiscuousOn; int bFilterSourceStationFrame; } ;
struct TYPE_8__ {int bNetPromiscuousMode; int rate; int short_slot; int active_scan; int be_scan_inprogress; int modulation; int host_encrypt; int host_decrypt; int * skb_aggQ; int * skb_waitQ; int fts; void* iw_mode; TYPE_2__ current_network; int eRFPowerState; int sta_sleep; scalar_t__ LPSDelayCnt; TYPE_1__ PowerSaveControl; scalar_t__ RfOffReason; scalar_t__ wx_set_enc; int * swcamtable; int rts; scalar_t__ ieee_up; TYPE_3__ IntelPromiscuousModeInfo; int mode; scalar_t__ status; } ;


 int DEFAULT_BEACONINTERVAL ;
 int DEFAULT_FRAG_THRESHOLD ;
 int DEFAULT_RETRY_DATA ;
 int DEFAULT_RETRY_RTS ;
 int DEFAULT_RTS_THRESHOLD ;
 int IFF_PROMISC ;
 void* IW_MODE_INFRA ;
 int LPS_IS_WAKE ;
 size_t MAX_QUEUE_SIZE ;
 int MAX_RX_COUNT ;
 int PCI ;
 int PREAMBLE_AUTO ;
 int RESET_TYPE_NORESET ;
 int RTLLIB_CCK_MODULATION ;
 int RTLLIB_OFDM_MODULATION ;
 int WIRELESS_MODE_AUTO ;
 int eAcmWay2_SW ;
 int eRfOn ;
 int memset (int *,int ,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int skb_queue_head_init (int *) ;
 int vzalloc (int) ;

__attribute__((used)) static void _rtl92e_init_priv_variable(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 u8 i;

 priv->AcmMethod = eAcmWay2_SW;
 priv->dot11CurrentPreambleMode = PREAMBLE_AUTO;
 priv->rtllib->status = 0;
 priv->polling_timer_on = 0;
 priv->up_first_time = 1;
 priv->blinked_ingpio = 0;
 priv->bDriverIsGoingToUnload = 0;
 priv->being_init_adapter = 0;
 priv->initialized_at_probe = 0;
 priv->bdisable_nic = 0;
 priv->bfirst_init = 0;
 priv->txringcount = 64;
 priv->rxbuffersize = 9100;
 priv->rxringcount = MAX_RX_COUNT;
 priv->irq_enabled = 0;
 priv->chan = 1;
 priv->RegChannelPlan = 0xf;
 priv->rtllib->mode = WIRELESS_MODE_AUTO;
 priv->rtllib->iw_mode = IW_MODE_INFRA;
 priv->rtllib->bNetPromiscuousMode = 0;
 priv->rtllib->IntelPromiscuousModeInfo.bPromiscuousOn = 0;
 priv->rtllib->IntelPromiscuousModeInfo.bFilterSourceStationFrame =
         0;
 priv->rtllib->ieee_up = 0;
 priv->retry_rts = DEFAULT_RETRY_RTS;
 priv->retry_data = DEFAULT_RETRY_DATA;
 priv->rtllib->rts = DEFAULT_RTS_THRESHOLD;
 priv->rtllib->rate = 110;
 priv->rtllib->short_slot = 1;
 priv->promisc = (dev->flags & IFF_PROMISC) ? 1 : 0;
 priv->bcck_in_ch14 = 0;
 priv->bfsync_processing = 0;
 priv->CCKPresentAttentuation = 0;
 priv->rfa_txpowertrackingindex = 0;
 priv->rfc_txpowertrackingindex = 0;
 priv->CckPwEnl = 6;
 priv->ScanDelay = 50;
 priv->ResetProgress = RESET_TYPE_NORESET;
 priv->bForcedSilentReset = 0;
 priv->bDisableNormalResetCheck = 0;
 priv->force_reset = 0;
 memset(priv->rtllib->swcamtable, 0, sizeof(struct sw_cam_table) * 32);

 memset(&priv->InterruptLog, 0, sizeof(struct log_int_8190));
 priv->RxCounter = 0;
 priv->rtllib->wx_set_enc = 0;
 priv->bHwRadioOff = 0;
 priv->RegRfOff = 0;
 priv->isRFOff = 0;
 priv->bInPowerSaveMode = 0;
 priv->rtllib->RfOffReason = 0;
 priv->RFChangeInProgress = 0;
 priv->bHwRfOffAction = 0;
 priv->SetRFPowerStateInProgress = 0;
 priv->rtllib->PowerSaveControl.bInactivePs = 1;
 priv->rtllib->PowerSaveControl.bIPSModeBackup = 0;
 priv->rtllib->PowerSaveControl.bLeisurePs = 1;
 priv->rtllib->PowerSaveControl.bFwCtrlLPS = 0;
 priv->rtllib->LPSDelayCnt = 0;
 priv->rtllib->sta_sleep = LPS_IS_WAKE;
 priv->rtllib->eRFPowerState = eRfOn;

 priv->rtllib->current_network.beacon_interval = DEFAULT_BEACONINTERVAL;
 priv->rtllib->iw_mode = IW_MODE_INFRA;
 priv->rtllib->active_scan = 1;
 priv->rtllib->be_scan_inprogress = 0;
 priv->rtllib->modulation = RTLLIB_CCK_MODULATION |
       RTLLIB_OFDM_MODULATION;
 priv->rtllib->host_encrypt = 1;
 priv->rtllib->host_decrypt = 1;

 priv->rtllib->fts = DEFAULT_FRAG_THRESHOLD;

 priv->card_type = PCI;

 priv->pFirmware = vzalloc(sizeof(struct rt_firmware));
 if (!priv->pFirmware)
  netdev_err(dev,
      "rtl8192e: Unable to allocate space for firmware\n");

 skb_queue_head_init(&priv->skb_queue);

 for (i = 0; i < MAX_QUEUE_SIZE; i++)
  skb_queue_head_init(&priv->rtllib->skb_waitQ[i]);
 for (i = 0; i < MAX_QUEUE_SIZE; i++)
  skb_queue_head_init(&priv->rtllib->skb_aggQ[i]);
}
