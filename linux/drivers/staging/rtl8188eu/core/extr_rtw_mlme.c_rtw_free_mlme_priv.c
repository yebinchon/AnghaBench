
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int free_bss_buf; } ;


 int rtw_free_mlme_priv_ie_data (struct mlme_priv*) ;
 int vfree (int ) ;

void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
{
 if (pmlmepriv) {
  rtw_free_mlme_priv_ie_data(pmlmepriv);
  vfree(pmlmepriv->free_bss_buf);
 }
}
