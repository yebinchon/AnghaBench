
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int dummy; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_rtl871x_mlme_c_ ;
 int _rtw_free_mlme_priv (struct mlme_priv*) ;

void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
{
 RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("rtw_free_mlme_priv\n"));
 _rtw_free_mlme_priv(pmlmepriv);
}
