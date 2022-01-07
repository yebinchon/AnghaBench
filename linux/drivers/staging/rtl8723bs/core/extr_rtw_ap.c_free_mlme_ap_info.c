
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct mlme_priv {int update_bcn; } ;
struct mlme_ext_info {int state; } ;
struct mlme_ext_priv {int bstart_bss; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;


 int _HW_STATE_NOLINK_ ;
 int rtw_free_all_stainfo (struct adapter*) ;
 int rtw_free_stainfo (struct adapter*,struct sta_info*) ;
 struct sta_info* rtw_get_bcmc_stainfo (struct adapter*) ;
 int rtw_sta_flush (struct adapter*) ;

void free_mlme_ap_info(struct adapter *padapter)
{
 struct sta_info *psta = ((void*)0);
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;



 pmlmepriv->update_bcn = 0;
 pmlmeext->bstart_bss = 0;

 rtw_sta_flush(padapter);

 pmlmeinfo->state = _HW_STATE_NOLINK_;


 rtw_free_all_stainfo(padapter);


 psta = rtw_get_bcmc_stainfo(padapter);
 rtw_free_stainfo(padapter, psta);
}
