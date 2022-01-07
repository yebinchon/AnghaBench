
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ndis_80211_var_ie {unsigned int Length; int* data; } ;
struct ht_priv {int ht_option; int stbc_cap; int ldpc_cap; } ;
struct mlme_priv {struct ht_priv htpriv; } ;
struct TYPE_5__ {int AMPDU_para; int * MCS_rate; } ;
struct TYPE_6__ {int* HT_cap; TYPE_1__ HT_cap_element; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct mlme_ext_info {int HT_caps_enable; TYPE_3__ HT_caps; } ;
struct mlme_ext_priv {int cur_bwmode; int * default_supported_mcs_set; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_priv mlmepriv; struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_8__ {int wifi_spec; } ;


 int CHANNEL_WIDTH_40 ;
 int DBG_871X (char*) ;
 scalar_t__ GET_HT_CAPABILITY_ELE_LDPC_CAP (int*) ;
 scalar_t__ GET_HT_CAPABILITY_ELE_RX_STBC (int*) ;
 scalar_t__ GET_HT_CAPABILITY_ELE_TX_STBC (int*) ;
 int HW_VAR_RF_TYPE ;
 int LDPC_HT_CAP_TX ;
 int LDPC_HT_ENABLE_TX ;
 int MCS_RATE_1R ;
 int MCS_RATE_2R ;
 int MCS_RATE_2R_13TO15_OFF ;



 int SET_FLAG (int,int) ;
 int STBC_HT_CAP_TX ;
 int STBC_HT_ENABLE_TX ;
 scalar_t__ TEST_FLAG (int,int) ;
 int WIFI_AP_STATE ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 TYPE_4__* pregistrypriv ;
 int rtw_hal_get_hwreg (struct adapter*,int ,int*) ;
 int set_mcs_rate_by_mask (int *,int ) ;

void HT_caps_handler(struct adapter *padapter, struct ndis_80211_var_ie *pIE)
{
 unsigned int i;
 u8 rf_type;
 u8 max_AMPDU_len, min_MPDU_spacing;
 u8 cur_ldpc_cap = 0, cur_stbc_cap = 0;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct ht_priv *phtpriv = &pmlmepriv->htpriv;

 if (!pIE)
  return;

 if (phtpriv->ht_option == 0)
  return;

 pmlmeinfo->HT_caps_enable = 1;

 for (i = 0; i < (pIE->Length); i++) {
  if (i != 2) {


   pmlmeinfo->HT_caps.u.HT_cap[i] &= (pIE->data[i]);
  } else {

   if ((pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x3) > (pIE->data[i] & 0x3))
    max_AMPDU_len = (pIE->data[i] & 0x3);
   else
    max_AMPDU_len = (pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x3);

   if ((pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x1c) > (pIE->data[i] & 0x1c))
    min_MPDU_spacing = (pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x1c);
   else
    min_MPDU_spacing = (pIE->data[i] & 0x1c);

   pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para = max_AMPDU_len | min_MPDU_spacing;
  }
 }
 rtw_hal_get_hwreg(padapter, HW_VAR_RF_TYPE, (u8 *)(&rf_type));


 for (i = 0; i < 16; i++)
  pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate[i] &= pmlmeext->default_supported_mcs_set[i];


 switch (rf_type) {
 case 130:
 case 129:
  set_mcs_rate_by_mask(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_1R);
  break;
 case 128:
 default:






  set_mcs_rate_by_mask(pmlmeinfo->HT_caps.u.HT_cap_element.MCS_rate, MCS_RATE_2R);

 }

 if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {

  if (TEST_FLAG(phtpriv->stbc_cap, STBC_HT_ENABLE_TX) && GET_HT_CAPABILITY_ELE_TX_STBC(pIE->data)) {
   SET_FLAG(cur_stbc_cap, STBC_HT_ENABLE_TX);
   DBG_871X("Enable HT Tx STBC !\n");
  }
  phtpriv->stbc_cap = cur_stbc_cap;
 } else {

  if (TEST_FLAG(phtpriv->ldpc_cap, LDPC_HT_ENABLE_TX) && GET_HT_CAPABILITY_ELE_LDPC_CAP(pIE->data)) {
   SET_FLAG(cur_ldpc_cap, (LDPC_HT_ENABLE_TX | LDPC_HT_CAP_TX));
   DBG_871X("Enable HT Tx LDPC!\n");
  }
  phtpriv->ldpc_cap = cur_ldpc_cap;


  if (TEST_FLAG(phtpriv->stbc_cap, STBC_HT_ENABLE_TX) && GET_HT_CAPABILITY_ELE_RX_STBC(pIE->data)) {
   SET_FLAG(cur_stbc_cap, (STBC_HT_ENABLE_TX | STBC_HT_CAP_TX));
   DBG_871X("Enable HT Tx STBC!\n");
  }
  phtpriv->stbc_cap = cur_stbc_cap;
 }
}
