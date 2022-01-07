
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ rf_pwrstate; int ps_flag; scalar_t__ bInternalAutoSuspend; } ;
struct adapter {int net_closed; int bup; int hw_init_completed; TYPE_1__ pwrctrlpriv; } ;


 int DBG_88E (char*,int ,...) ;
 int LED_CTL_POWER_OFF ;
 int LeaveAllPowerSaveMode (struct adapter*) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 int led_control_8188eu (struct adapter*,int ) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 scalar_t__ rf_off ;
 scalar_t__ rf_on ;
 int rtw_disassoc_cmd (struct adapter*,int,int) ;
 int rtw_free_assoc_resources (struct adapter*) ;
 int rtw_free_network_queue (struct adapter*,int) ;
 int rtw_indicate_disconnect (struct adapter*) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 int rtw_netif_queue_stopped (struct net_device*) ;

__attribute__((used)) static int netdev_close(struct net_device *pnetdev)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+88eu_drv - drv_close\n"));

 if (padapter->pwrctrlpriv.bInternalAutoSuspend) {
  if (padapter->pwrctrlpriv.rf_pwrstate == rf_off)
   padapter->pwrctrlpriv.ps_flag = 1;
 }
 padapter->net_closed = 1;

 if (padapter->pwrctrlpriv.rf_pwrstate == rf_on) {
  DBG_88E("(2)88eu_drv - drv_close, bup =%d, hw_init_completed =%d\n",
   padapter->bup, padapter->hw_init_completed);


  if (pnetdev) {
   if (!rtw_netif_queue_stopped(pnetdev))
    netif_tx_stop_all_queues(pnetdev);
  }


  LeaveAllPowerSaveMode(padapter);
  rtw_disassoc_cmd(padapter, 500, 0);

  rtw_indicate_disconnect(padapter);

  rtw_free_assoc_resources(padapter);

  rtw_free_network_queue(padapter, 1);

  led_control_8188eu(padapter, LED_CTL_POWER_OFF);
 }

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-88eu_drv - drv_close\n"));
 DBG_88E("-88eu_drv - drv_close, bup =%d\n", padapter->bup);
 return 0;
}
