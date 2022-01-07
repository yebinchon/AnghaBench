
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r8192_priv {TYPE_2__* rtllib; int rf_set_chan; TYPE_1__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int ScanOperationBackupHandler; int * UpdateBeaconInterruptHandler; int * LedControlHandler; int rtllib_ips_leave; int rtllib_ips_leave_wq; int InitialGainHandler; int * SetFwCmdHandler; int AllowAllDestAddrHandler; int SetHwRegHandler; int GetHalfNmodeSupportByAPsHandler; int GetNmodeSupportBySecCfg; int ps_is_queue_empty; int enter_sleep_state; int sta_wake_up; int stop_send_beacons; int start_send_beacons; int SetBWModeHandler; int LeisurePSLeave; int SetWirelessMode; int handle_beacon; int handle_assoc_response; int check_nic_enough_desc; int softmac_data_hard_start_xmit; int link_change; int set_chan; int softmac_hard_start_xmit; } ;
struct TYPE_3__ {int link_change; } ;


 int _rtl92e_check_nic_enough_desc ;
 int _rtl92e_handle_assoc_response ;
 int _rtl92e_handle_beacon ;
 int _rtl92e_hard_data_xmit ;
 int _rtl92e_hard_start_xmit ;
 int _rtl92e_is_tx_queue_empty ;
 int _rtl92e_set_chan ;
 int _rtl92e_stop_beacon ;
 int rtl92e_enter_sleep ;
 int rtl92e_get_nmode_support_by_sec ;
 int rtl92e_hw_wakeup ;
 int rtl92e_init_gain ;
 int rtl92e_is_halfn_supported_by_ap ;
 int rtl92e_leisure_ps_leave ;
 int rtl92e_rtllib_ips_leave ;
 int rtl92e_rtllib_ips_leave_wq ;
 int rtl92e_scan_op_backup ;
 int rtl92e_set_bw_mode ;
 int rtl92e_set_channel ;
 int rtl92e_set_monitor_mode ;
 int rtl92e_set_reg ;
 int rtl92e_set_wireless_mode ;
 int rtl92e_start_beacon ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_init_priv_handler(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 priv->rtllib->softmac_hard_start_xmit = _rtl92e_hard_start_xmit;
 priv->rtllib->set_chan = _rtl92e_set_chan;
 priv->rtllib->link_change = priv->ops->link_change;
 priv->rtllib->softmac_data_hard_start_xmit = _rtl92e_hard_data_xmit;
 priv->rtllib->check_nic_enough_desc = _rtl92e_check_nic_enough_desc;
 priv->rtllib->handle_assoc_response = _rtl92e_handle_assoc_response;
 priv->rtllib->handle_beacon = _rtl92e_handle_beacon;
 priv->rtllib->SetWirelessMode = rtl92e_set_wireless_mode;
 priv->rtllib->LeisurePSLeave = rtl92e_leisure_ps_leave;
 priv->rtllib->SetBWModeHandler = rtl92e_set_bw_mode;
 priv->rf_set_chan = rtl92e_set_channel;

 priv->rtllib->start_send_beacons = rtl92e_start_beacon;
 priv->rtllib->stop_send_beacons = _rtl92e_stop_beacon;

 priv->rtllib->sta_wake_up = rtl92e_hw_wakeup;
 priv->rtllib->enter_sleep_state = rtl92e_enter_sleep;
 priv->rtllib->ps_is_queue_empty = _rtl92e_is_tx_queue_empty;

 priv->rtllib->GetNmodeSupportBySecCfg = rtl92e_get_nmode_support_by_sec;
 priv->rtllib->GetHalfNmodeSupportByAPsHandler =
      rtl92e_is_halfn_supported_by_ap;

 priv->rtllib->SetHwRegHandler = rtl92e_set_reg;
 priv->rtllib->AllowAllDestAddrHandler = rtl92e_set_monitor_mode;
 priv->rtllib->SetFwCmdHandler = ((void*)0);
 priv->rtllib->InitialGainHandler = rtl92e_init_gain;
 priv->rtllib->rtllib_ips_leave_wq = rtl92e_rtllib_ips_leave_wq;
 priv->rtllib->rtllib_ips_leave = rtl92e_rtllib_ips_leave;

 priv->rtllib->LedControlHandler = ((void*)0);
 priv->rtllib->UpdateBeaconInterruptHandler = ((void*)0);

 priv->rtllib->ScanOperationBackupHandler = rtl92e_scan_op_backup;
}
