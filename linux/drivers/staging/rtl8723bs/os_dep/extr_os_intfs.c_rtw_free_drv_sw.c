
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * old_pnetdev; } ;
struct adapter {TYPE_2__* pbuddy_adapter; TYPE_1__ rereg_nd_name_priv; int recvpriv; int stapriv; int xmitpriv; int mlmepriv; int evtpriv; int cmdpriv; int mlmeextpriv; } ;
struct TYPE_4__ {int * pbuddy_adapter; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _SUCCESS ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 int _rtw_free_recv_priv (int *) ;
 int _rtw_free_sta_priv (int *) ;
 int _rtw_free_xmit_priv (int *) ;
 int free_mlme_ext_priv (int *) ;
 int free_netdev (int *) ;
 int rtw_free_cmd_priv (int *) ;
 int rtw_free_evt_priv (int *) ;
 int rtw_free_mlme_priv (int *) ;
 int rtw_free_pwrctrl_priv (struct adapter*) ;
 int rtw_hal_free_data (struct adapter*) ;

u8 rtw_free_drv_sw(struct adapter *padapter)
{
 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("==>rtw_free_drv_sw"));

 free_mlme_ext_priv(&padapter->mlmeextpriv);

 rtw_free_cmd_priv(&padapter->cmdpriv);

 rtw_free_evt_priv(&padapter->evtpriv);

 rtw_free_mlme_priv(&padapter->mlmepriv);



 _rtw_free_xmit_priv(&padapter->xmitpriv);

 _rtw_free_sta_priv(&padapter->stapriv);

 _rtw_free_recv_priv(&padapter->recvpriv);

 rtw_free_pwrctrl_priv(padapter);



 rtw_hal_free_data(padapter);

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("<==rtw_free_drv_sw\n"));


 if (padapter->rereg_nd_name_priv.old_pnetdev) {
  free_netdev(padapter->rereg_nd_name_priv.old_pnetdev);
  padapter->rereg_nd_name_priv.old_pnetdev = ((void*)0);
 }


 if (padapter->pbuddy_adapter != ((void*)0))
  padapter->pbuddy_adapter->pbuddy_adapter = ((void*)0);

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_free_drv_sw\n"));

 return _SUCCESS;
}
