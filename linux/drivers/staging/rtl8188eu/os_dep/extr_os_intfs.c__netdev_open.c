
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct pwrctrl_priv {int bips_processing; scalar_t__ ps_flag; } ;
struct net_device {int dev_addr; } ;
struct TYPE_2__ {int dynamic_chk_timer; } ;
struct adapter {int bup; int net_closed; int bDriverStopped; int bSurpriseRemoved; struct pwrctrl_priv pwrctrlpriv; TYPE_1__ mlmepriv; } ;


 int DBG_88E (char*,int) ;
 int LED_CTL_NO_LINK ;
 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ _FAIL ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 scalar_t__ init_hw_mlme_ext (struct adapter*) ;
 scalar_t__ jiffies ;
 int led_control_8188eu (struct adapter*,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;
 int pr_info (char*,...) ;
 int rtw_hal_inirp_init (struct adapter*) ;
 scalar_t__ rtw_hal_init (struct adapter*) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 int rtw_netif_queue_stopped (struct net_device*) ;
 int rtw_set_pwr_state_check_timer (struct pwrctrl_priv*) ;
 int rtw_start_drv_threads (struct adapter*) ;

__attribute__((used)) static int _netdev_open(struct net_device *pnetdev)
{
 uint status;
 int err;
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
 struct pwrctrl_priv *pwrctrlpriv = &padapter->pwrctrlpriv;

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+88eu_drv - dev_open\n"));
 DBG_88E("+88eu_drv - drv_open, bup =%d\n", padapter->bup);

 if (pwrctrlpriv->ps_flag) {
  padapter->net_closed = 0;
  goto netdev_open_normal_process;
 }

 if (!padapter->bup) {
  padapter->bDriverStopped = 0;
  padapter->bSurpriseRemoved = 0;

  status = rtw_hal_init(padapter);
  if (status == _FAIL) {
   RT_TRACE(_module_os_intfs_c_, _drv_err_, ("rtl88eu_hal_init(): Can't init h/w!\n"));
   goto netdev_open_error;
  }

  pr_info("MAC Address = %pM\n", pnetdev->dev_addr);

  err = rtw_start_drv_threads(padapter);
  if (err) {
   pr_info("Initialize driver software resource Failed!\n");
   goto netdev_open_error;
  }

  if (init_hw_mlme_ext(padapter) == _FAIL) {
   pr_info("can't init mlme_ext_priv\n");
   goto netdev_open_error;
  }
  rtw_hal_inirp_init(padapter);

  led_control_8188eu(padapter, LED_CTL_NO_LINK);

  padapter->bup = 1;
 }
 padapter->net_closed = 0;

 mod_timer(&padapter->mlmepriv.dynamic_chk_timer,
    jiffies + msecs_to_jiffies(2000));

 padapter->pwrctrlpriv.bips_processing = 0;
 rtw_set_pwr_state_check_timer(&padapter->pwrctrlpriv);

 if (!rtw_netif_queue_stopped(pnetdev))
  netif_tx_start_all_queues(pnetdev);
 else
  netif_tx_wake_all_queues(pnetdev);

netdev_open_normal_process:
 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-88eu_drv - dev_open\n"));
 DBG_88E("-88eu_drv - drv_open, bup =%d\n", padapter->bup);
 return 0;

netdev_open_error:
 padapter->bup = 0;
 netif_carrier_off(pnetdev);
 netif_tx_stop_all_queues(pnetdev);
 RT_TRACE(_module_os_intfs_c_, _drv_err_, ("-88eu_drv - dev_open, fail!\n"));
 DBG_88E("-88eu_drv - drv_open fail, bup =%d\n", padapter->bup);
 return -1;
}
