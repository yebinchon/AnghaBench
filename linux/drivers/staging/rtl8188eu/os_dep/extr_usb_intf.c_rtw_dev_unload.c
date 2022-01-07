
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bInternalAutoSuspend; } ;
struct TYPE_4__ {scalar_t__ ack_tx; } ;
struct adapter {int bup; int bDriverStopped; int bSurpriseRemoved; TYPE_1__ pwrctrlpriv; TYPE_2__ xmitpriv; } ;


 int RTW_SCTX_DONE_DRV_STOP ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_hci_intfs_c_ ;
 int pr_debug (char*) ;
 int rtw_ack_tx_done (TYPE_2__*,int ) ;
 int rtw_hal_deinit (struct adapter*) ;
 int rtw_stop_drv_threads (struct adapter*) ;
 int usb_intf_stop (struct adapter*) ;

__attribute__((used)) static void rtw_dev_unload(struct adapter *padapter)
{
 RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+rtw_dev_unload\n"));

 if (padapter->bup) {
  pr_debug("===> rtw_dev_unload\n");
  padapter->bDriverStopped = 1;
  if (padapter->xmitpriv.ack_tx)
   rtw_ack_tx_done(&padapter->xmitpriv, RTW_SCTX_DONE_DRV_STOP);

  usb_intf_stop(padapter);

  if (!padapter->pwrctrlpriv.bInternalAutoSuspend)
   rtw_stop_drv_threads(padapter);


  if (!padapter->bSurpriseRemoved) {
   rtw_hal_deinit(padapter);
   padapter->bSurpriseRemoved = 1;
  }

  padapter->bup = 0;
 } else {
  RT_TRACE(_module_hci_intfs_c_, _drv_err_,
    ("r871x_dev_unload():padapter->bup == false\n"));
 }

 pr_debug("<=== rtw_dev_unload\n");

 RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-rtw_dev_unload\n"));
}
