
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int WIFI_AP_STATE ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int expire_timeout_chk (struct adapter*) ;
 int linked_status_chk (struct adapter*) ;
 int rtw_hal_dm_watchdog (struct adapter*) ;
 int traffic_status_watchdog (struct adapter*) ;

__attribute__((used)) static void dynamic_chk_wk_hdl(struct adapter *padapter, u8 *pbuf, int sz)
{
 struct mlme_priv *pmlmepriv;

 padapter = (struct adapter *)pbuf;
 pmlmepriv = &padapter->mlmepriv;






 linked_status_chk(padapter);
 traffic_status_watchdog(padapter);

 rtw_hal_dm_watchdog(padapter);
}
