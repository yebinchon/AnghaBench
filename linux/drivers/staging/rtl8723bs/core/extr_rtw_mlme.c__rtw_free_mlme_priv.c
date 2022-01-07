
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {scalar_t__ free_bss_buf; } ;


 int rtw_free_mlme_priv_ie_data (struct mlme_priv*) ;
 int vfree (scalar_t__) ;

void _rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
{
 if (pmlmepriv) {
  rtw_free_mlme_priv_ie_data(pmlmepriv);
  if (pmlmepriv->free_bss_buf) {
   vfree(pmlmepriv->free_bss_buf);
  }
 }
}
