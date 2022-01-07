
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int LPS_CTRL_DISCONNECT ;
 int RT_TRACE (int ,int ,char*) ;
 int WIFI_UNDER_WPS ;
 int _FW_LINKED ;
 int _FW_UNDER_LINKING ;
 int _clr_fwstate_ (struct mlme_priv*,int) ;
 int _drv_err_ ;
 int _module_rtl871x_mlme_c_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int) ;
 int rtw_clear_scan_deny (struct adapter*) ;
 int rtw_lps_ctrl_wk_cmd (struct adapter*,int ,int) ;
 int rtw_os_indicate_disconnect (struct adapter*) ;
 int rtw_set_ips_deny (struct adapter*,int) ;
 scalar_t__ rtw_to_roam (struct adapter*) ;

void rtw_indicate_disconnect(struct adapter *padapter)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("+rtw_indicate_disconnect\n"));

 _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING|WIFI_UNDER_WPS);



 if (rtw_to_roam(padapter) > 0)
  _clr_fwstate_(pmlmepriv, _FW_LINKED);

 if (check_fwstate(&padapter->mlmepriv, _FW_LINKED)
  || (rtw_to_roam(padapter) <= 0)
 ) {
  rtw_os_indicate_disconnect(padapter);


  rtw_set_ips_deny(padapter, 3000);

  _clr_fwstate_(pmlmepriv, _FW_LINKED);

  rtw_clear_scan_deny(padapter);
 }

 rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_DISCONNECT, 1);
}
