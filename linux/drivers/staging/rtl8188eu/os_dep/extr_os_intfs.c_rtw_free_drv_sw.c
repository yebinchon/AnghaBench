
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int hw_init_mutex; int recvpriv; int stapriv; int xmitpriv; int mlmepriv; int mlmeextpriv; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _SUCCESS ;
 int _drv_info_ ;
 int _module_os_intfs_c_ ;
 int _rtw_free_recv_priv (int *) ;
 int _rtw_free_sta_priv (int *) ;
 int _rtw_free_xmit_priv (int *) ;
 int free_mlme_ext_priv (int *) ;
 int mutex_destroy (int *) ;
 int rtw_free_mlme_priv (int *) ;
 int rtw_hal_free_data (struct adapter*) ;

u8 rtw_free_drv_sw(struct adapter *padapter)
{
 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("==>rtw_free_drv_sw"));

 free_mlme_ext_priv(&padapter->mlmeextpriv);

 rtw_free_mlme_priv(&padapter->mlmepriv);
 _rtw_free_xmit_priv(&padapter->xmitpriv);


 _rtw_free_sta_priv(&padapter->stapriv);

 _rtw_free_recv_priv(&padapter->recvpriv);

 rtw_hal_free_data(padapter);

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("<== rtw_free_drv_sw\n"));

 mutex_destroy(&padapter->hw_init_mutex);

 RT_TRACE(_module_os_intfs_c_, _drv_info_, ("-rtw_free_drv_sw\n"));

 return _SUCCESS;
}
