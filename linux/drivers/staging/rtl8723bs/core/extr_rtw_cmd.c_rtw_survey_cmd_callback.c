
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int scan_to_timer; } ;
struct cmd_obj {scalar_t__ res; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 scalar_t__ H2C_DROPPED ;
 scalar_t__ H2C_SUCCESS ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_rtl871x_cmd_c_ ;
 int _set_timer (int *,int) ;
 int rtw_free_cmd_obj (struct cmd_obj*) ;

void rtw_survey_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 if (pcmd->res == H2C_DROPPED) {


  _set_timer(&pmlmepriv->scan_to_timer, 1);
 } else if (pcmd->res != H2C_SUCCESS) {
  _set_timer(&pmlmepriv->scan_to_timer, 1);
  RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ********Error: MgntActrtw_set_802_11_bssid_LIST_SCAN Fail ************\n\n."));
 }


 rtw_free_cmd_obj(pcmd);
}
