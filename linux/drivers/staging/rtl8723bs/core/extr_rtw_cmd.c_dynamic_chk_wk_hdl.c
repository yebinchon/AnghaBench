
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int WIFI_AP_STATE ;
 int _linked_info_dump (struct adapter*) ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int expire_timeout_chk (struct adapter*) ;
 int hal_btcoex_Handler (struct adapter*) ;
 scalar_t__ is_primary_adapter (struct adapter*) ;
 int linked_status_chk (struct adapter*) ;
 int rtw_hal_dm_watchdog (struct adapter*) ;
 int rtw_ps_processor (struct adapter*) ;
 int traffic_status_watchdog (struct adapter*,int ) ;

__attribute__((used)) static void dynamic_chk_wk_hdl(struct adapter *padapter)
{
 struct mlme_priv *pmlmepriv;
 pmlmepriv = &(padapter->mlmepriv);

 if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == 1) {
  expire_timeout_chk(padapter);
 }


 _linked_info_dump(padapter);



 {
  linked_status_chk(padapter);
  traffic_status_watchdog(padapter, 0);
 }

 rtw_hal_dm_watchdog(padapter);






 hal_btcoex_Handler(padapter);



 if (is_primary_adapter(padapter))
  rtw_ps_processor(padapter);
}
