
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwrctrl_priv {int bInternalAutoSuspend; scalar_t__ rf_pwrstate; int ps_flag; } ;
struct net_device {int dummy; } ;
struct adapter {int net_closed; int netif_up; int bup; int hw_init_completed; } ;
struct TYPE_2__ {int bandroid_scan; } ;


 int DBG_871X (char*,int ,...) ;
 int LeaveAllPowerSaveMode (struct adapter*) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 TYPE_1__* adapter_wdev_data (struct adapter*) ;
 scalar_t__ rf_off ;
 scalar_t__ rf_on ;
 int rtw_disassoc_cmd (struct adapter*,int,int) ;
 int rtw_free_assoc_resources (struct adapter*,int) ;
 int rtw_free_network_queue (struct adapter*,int) ;
 int rtw_indicate_disconnect (struct adapter*) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 int rtw_netif_queue_stopped (struct net_device*) ;
 int rtw_netif_stop_queue (struct net_device*) ;
 int rtw_scan_abort (struct adapter*) ;

__attribute__((used)) static int netdev_close(struct net_device *pnetdev)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
 struct pwrctrl_priv *pwrctl = adapter_to_pwrctl(padapter);

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+871x_drv - drv_close\n"));

 if (pwrctl->bInternalAutoSuspend == 1) {

  if (pwrctl->rf_pwrstate == rf_off)
   pwrctl->ps_flag = 1;
 }
 padapter->net_closed = 1;
 padapter->netif_up = 0;
 if (pwrctl->rf_pwrstate == rf_on) {
  DBG_871X("(2)871x_drv - drv_close, bup =%d, hw_init_completed =%d\n", padapter->bup, padapter->hw_init_completed);


  if (pnetdev) {
   if (!rtw_netif_queue_stopped(pnetdev))
    rtw_netif_stop_queue(pnetdev);
  }


  LeaveAllPowerSaveMode(padapter);
  rtw_disassoc_cmd(padapter, 500, 0);

  rtw_indicate_disconnect(padapter);

  rtw_free_assoc_resources(padapter, 1);

  rtw_free_network_queue(padapter, 1);
 }

 rtw_scan_abort(padapter);
 adapter_wdev_data(padapter)->bandroid_scan = 0;

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-871x_drv - drv_close\n"));
 DBG_871X("-871x_drv - drv_close, bup =%d\n", padapter->bup);

 return 0;
}
