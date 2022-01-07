
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_802_11_var_ie {int Length; int data; } ;
struct ht_priv {int ht_option; } ;
struct mlme_priv {struct ht_priv htpriv; } ;
struct mlme_ext_info {int HT_info_enable; int HT_info; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_priv mlmepriv; struct mlme_ext_priv mlmeextpriv; } ;
struct HT_info_element {int dummy; } ;


 int memcpy (int *,int ,int) ;

void HT_info_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct ht_priv *phtpriv = &pmlmepriv->htpriv;

 if (!pIE)
  return;

 if (!phtpriv->ht_option)
  return;

 if (pIE->Length > sizeof(struct HT_info_element))
  return;

 pmlmeinfo->HT_info_enable = 1;
 memcpy(&pmlmeinfo->HT_info, pIE->data, pIE->Length);
}
