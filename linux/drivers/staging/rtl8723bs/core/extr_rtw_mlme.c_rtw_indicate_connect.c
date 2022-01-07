
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int to_join; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _FW_LINKED ;
 int _drv_err_ ;
 int _module_rtl871x_mlme_c_ ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int get_fwstate (struct mlme_priv*) ;
 int rtw_os_indicate_connect (struct adapter*) ;
 int rtw_set_scan_deny (struct adapter*,int) ;
 int rtw_set_to_roam (struct adapter*,int ) ;
 int set_fwstate (struct mlme_priv*,int ) ;

void rtw_indicate_connect(struct adapter *padapter)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("+rtw_indicate_connect\n"));

 pmlmepriv->to_join = 0;

 if (!check_fwstate(&padapter->mlmepriv, _FW_LINKED)) {

  set_fwstate(pmlmepriv, _FW_LINKED);

  rtw_os_indicate_connect(padapter);
 }

 rtw_set_to_roam(padapter, 0);
 rtw_set_scan_deny(padapter, 3000);

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("-rtw_indicate_connect: fw_state = 0x%08x\n", get_fwstate(pmlmepriv)));
}
