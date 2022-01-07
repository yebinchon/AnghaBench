
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {struct adapter* padapter; } ;
struct TYPE_3__ {struct adapter* padapter; } ;
struct adapter {int fix_rate; int setband; TYPE_2__ stapriv; int security_key_mutex; int recvpriv; int xmitpriv; int evtpriv; TYPE_1__ cmdpriv; } ;


 int DBG_871X (char*) ;
 int GHZ24_50 ;
 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 scalar_t__ _rtw_init_recv_priv (int *,struct adapter*) ;
 scalar_t__ _rtw_init_sta_priv (TYPE_2__*) ;
 scalar_t__ _rtw_init_xmit_priv (int *,struct adapter*) ;
 int init_mlme_ext_priv (struct adapter*) ;
 int rtw_hal_dm_init (struct adapter*) ;
 int rtw_init_bcmc_stainfo (struct adapter*) ;
 scalar_t__ rtw_init_cmd_priv (TYPE_1__*) ;
 int rtw_init_default_value (struct adapter*) ;
 scalar_t__ rtw_init_evt_priv (int *) ;
 int rtw_init_hal_com_default_value (struct adapter*) ;
 scalar_t__ rtw_init_mlme_priv (struct adapter*) ;
 int rtw_init_pwrctrl_priv (struct adapter*) ;
 int spin_lock_init (int *) ;

u8 rtw_init_drv_sw(struct adapter *padapter)
{
 u8 ret8 = _SUCCESS;

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_init_drv_sw\n"));

 rtw_init_default_value(padapter);

 rtw_init_hal_com_default_value(padapter);

 if (rtw_init_cmd_priv(&padapter->cmdpriv)) {
  RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init cmd_priv\n"));
  ret8 = _FAIL;
  goto exit;
 }

 padapter->cmdpriv.padapter = padapter;

 if (rtw_init_evt_priv(&padapter->evtpriv)) {
  RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init evt_priv\n"));
  ret8 = _FAIL;
  goto exit;
 }


 if (rtw_init_mlme_priv(padapter) == _FAIL) {
  RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init mlme_priv\n"));
  ret8 = _FAIL;
  goto exit;
 }

 init_mlme_ext_priv(padapter);

 if (_rtw_init_xmit_priv(&padapter->xmitpriv, padapter) == _FAIL) {
  DBG_871X("Can't _rtw_init_xmit_priv\n");
  ret8 = _FAIL;
  goto exit;
 }

 if (_rtw_init_recv_priv(&padapter->recvpriv, padapter) == _FAIL) {
  DBG_871X("Can't _rtw_init_recv_priv\n");
  ret8 = _FAIL;
  goto exit;
 }

 spin_lock_init(&padapter->security_key_mutex);




 if (_rtw_init_sta_priv(&padapter->stapriv) == _FAIL) {
  DBG_871X("Can't _rtw_init_sta_priv\n");
  ret8 = _FAIL;
  goto exit;
 }

 padapter->stapriv.padapter = padapter;
 padapter->setband = GHZ24_50;
 padapter->fix_rate = 0xFF;
 rtw_init_bcmc_stainfo(padapter);

 rtw_init_pwrctrl_priv(padapter);

 rtw_hal_dm_init(padapter);

exit:

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_init_drv_sw\n"));

 return ret8;
}
