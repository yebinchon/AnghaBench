
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ndis_802_11_var_ie {unsigned int Length; int* data; } ;
struct ht_priv {int ht_option; } ;
struct mlme_priv {struct ht_priv htpriv; } ;
struct TYPE_2__ {int ampdu_params_info; int mcs; } ;
struct mlme_ext_info {int HT_caps_enable; TYPE_1__ HT_caps; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_priv mlmepriv; struct mlme_ext_priv mlmeextpriv; } ;


 int* MCS_rate_1R ;

void HT_caps_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
{
 unsigned int i;
 u8 max_AMPDU_len, min_MPDU_spacing;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct ht_priv *phtpriv = &pmlmepriv->htpriv;
 u8 *HT_cap = (u8 *)(&pmlmeinfo->HT_caps);

 if (!pIE)
  return;

 if (!phtpriv->ht_option)
  return;

 pmlmeinfo->HT_caps_enable = 1;

 for (i = 0; i < (pIE->Length); i++) {
  if (i != 2) {

   HT_cap[i] &= (pIE->data[i]);
  } else {

   if ((pmlmeinfo->HT_caps.ampdu_params_info & 0x3) > (pIE->data[i] & 0x3))
    max_AMPDU_len = pIE->data[i] & 0x3;
   else
    max_AMPDU_len = pmlmeinfo->HT_caps.ampdu_params_info & 0x3;

   if ((pmlmeinfo->HT_caps.ampdu_params_info & 0x1c) > (pIE->data[i] & 0x1c))
    min_MPDU_spacing = pmlmeinfo->HT_caps.ampdu_params_info & 0x1c;
   else
    min_MPDU_spacing = pIE->data[i] & 0x1c;

   pmlmeinfo->HT_caps.ampdu_params_info = max_AMPDU_len | min_MPDU_spacing;
  }
 }


 for (i = 0; i < 16; i++)
  ((u8 *)&pmlmeinfo->HT_caps.mcs)[i] &= MCS_rate_1R[i];
}
