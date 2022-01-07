
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct rtw_ieee80211_ht_cap {int ampdu_params_info; int supp_mcs_set; int cap_info; } ;
struct registry_priv {int bw_mode; int rx_stbc; int wifi_spec; } ;
struct ht_priv {int ht_option; int stbc_cap; scalar_t__ sgi_40m; scalar_t__ sgi_20m; } ;
struct mlme_priv {struct ht_priv htpriv; } ;
struct mlme_ext_priv {scalar_t__ cur_bwmode; int default_supported_mcs_set; } ;
struct ieee80211_ht_addt_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ dot11PrivacyAlgrthm; } ;
struct adapter {int driver_rx_ampdu_factor; TYPE_1__ securitypriv; struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; struct registry_priv registrypriv; } ;
struct HT_info_element {int* infos; } ;
typedef enum HT_CAP_AMPDU_FACTOR { ____Placeholder_HT_CAP_AMPDU_FACTOR } HT_CAP_AMPDU_FACTOR ;


 int BIT (int) ;
 scalar_t__ CHANNEL_WIDTH_20 ;
 scalar_t__ CHANNEL_WIDTH_40 ;
 int DBG_871X (char*) ;
 int HAL_DEF_MAX_RECVBUF_SZ ;
 int HAL_DEF_RX_PACKET_OFFSET ;
 int HW_VAR_MAX_RX_AMPDU_FACTOR ;
 int HW_VAR_RF_TYPE ;
 int IEEE80211_HT_CAP_AMPDU_DENSITY ;
 int IEEE80211_HT_CAP_DSSSCCK40 ;
 int IEEE80211_HT_CAP_RX_STBC_1R ;
 int IEEE80211_HT_CAP_RX_STBC_2R ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SM_PS ;
 int IEEE80211_HT_CAP_SUP_WIDTH ;
 int IEEE80211_HT_CAP_TX_STBC ;
 int MCS_RATE_1R ;
 int MCS_RATE_2R ;
 int MCS_RATE_2R_13TO15_OFF ;



 int STBC_HT_ENABLE_RX ;
 int STBC_HT_ENABLE_TX ;
 scalar_t__ TEST_FLAG (int ,int ) ;
 int WIFI_STATION_STATE ;
 scalar_t__ _AES_ ;
 int _HT_ADD_INFO_IE_ ;
 int _HT_CAPABILITY_IE_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int cpu_to_le16 (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (struct rtw_ieee80211_ht_cap*,int ,int) ;
 unsigned char* rtw_get_ie (scalar_t__*,int ,int*,int) ;
 int rtw_hal_get_def_var (struct adapter*,int ,int*) ;
 int rtw_hal_get_hwreg (struct adapter*,int ,scalar_t__*) ;
 unsigned char* rtw_set_ie (scalar_t__*,int ,int,unsigned char*,int*) ;
 int set_mcs_rate_by_mask (int ,int ) ;

unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_ie, uint in_len, uint *pout_len, u8 channel)
{
 u32 ielen, out_len;
 enum HT_CAP_AMPDU_FACTOR max_rx_ampdu_factor;
 unsigned char *p, *pframe;
 struct rtw_ieee80211_ht_cap ht_capie;
 u8 cbw40_enable = 0, stbc_rx_enable = 0, rf_type = 0, operation_bw = 0;
 struct registry_priv *pregistrypriv = &padapter->registrypriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct ht_priv *phtpriv = &pmlmepriv->htpriv;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;

 phtpriv->ht_option = 0;

 out_len = *pout_len;

 memset(&ht_capie, 0, sizeof(struct rtw_ieee80211_ht_cap));

 ht_capie.cap_info = cpu_to_le16(IEEE80211_HT_CAP_DSSSCCK40);

 if (phtpriv->sgi_20m)
  ht_capie.cap_info |= cpu_to_le16(IEEE80211_HT_CAP_SGI_20);


 if (in_ie == ((void*)0)) {

  if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
   operation_bw = padapter->mlmeextpriv.cur_bwmode;
   if (operation_bw > CHANNEL_WIDTH_40)
    operation_bw = CHANNEL_WIDTH_40;
  } else

   operation_bw = CHANNEL_WIDTH_40;
 } else {
  p = rtw_get_ie(in_ie, _HT_ADD_INFO_IE_, &ielen, in_len);
  if (p && (ielen == sizeof(struct ieee80211_ht_addt_info))) {
   struct HT_info_element *pht_info = (struct HT_info_element *)(p+2);
   if (pht_info->infos[0] & BIT(2)) {
    switch (pht_info->infos[0] & 0x3) {
    case 1:
    case 3:
     operation_bw = CHANNEL_WIDTH_40;
     break;
    default:
     operation_bw = CHANNEL_WIDTH_20;
     break;
    }
   } else {
    operation_bw = CHANNEL_WIDTH_20;
   }
  }
 }


 if (channel > 14) {
  if ((pregistrypriv->bw_mode & 0xf0) > 0)
   cbw40_enable = 1;
 } else {
  if ((pregistrypriv->bw_mode & 0x0f) > 0)
   cbw40_enable = 1;
 }

 if ((cbw40_enable == 1) && (operation_bw == CHANNEL_WIDTH_40)) {
  ht_capie.cap_info |= cpu_to_le16(IEEE80211_HT_CAP_SUP_WIDTH);
  if (phtpriv->sgi_40m)
   ht_capie.cap_info |= cpu_to_le16(IEEE80211_HT_CAP_SGI_40);
 }

 if (TEST_FLAG(phtpriv->stbc_cap, STBC_HT_ENABLE_TX))
  ht_capie.cap_info |= cpu_to_le16(IEEE80211_HT_CAP_TX_STBC);


 ht_capie.cap_info |= cpu_to_le16(IEEE80211_HT_CAP_SM_PS);

 if (TEST_FLAG(phtpriv->stbc_cap, STBC_HT_ENABLE_RX)) {
  if ((channel <= 14 && pregistrypriv->rx_stbc == 0x1) ||
   (pregistrypriv->wifi_spec == 1)) {
   stbc_rx_enable = 1;
   DBG_871X("declare supporting RX STBC\n");
  }
 }


 memcpy(ht_capie.supp_mcs_set, pmlmeext->default_supported_mcs_set, 16);


 rtw_hal_get_hwreg(padapter, HW_VAR_RF_TYPE, (u8 *)(&rf_type));

 switch (rf_type) {
 case 130:
  if (stbc_rx_enable)
   ht_capie.cap_info |= cpu_to_le16(IEEE80211_HT_CAP_RX_STBC_1R);

  set_mcs_rate_by_mask(ht_capie.supp_mcs_set, MCS_RATE_1R);
  break;

 case 128:
 case 129:
 default:
  if (stbc_rx_enable)
   ht_capie.cap_info |= cpu_to_le16(IEEE80211_HT_CAP_RX_STBC_2R);







   set_mcs_rate_by_mask(ht_capie.supp_mcs_set, MCS_RATE_2R);

  break;
 }

 {
  u32 rx_packet_offset, max_recvbuf_sz;
  rtw_hal_get_def_var(padapter, HAL_DEF_RX_PACKET_OFFSET, &rx_packet_offset);
  rtw_hal_get_def_var(padapter, HAL_DEF_MAX_RECVBUF_SZ, &max_recvbuf_sz);
 }

 if (padapter->driver_rx_ampdu_factor != 0xFF)
  max_rx_ampdu_factor =
    (enum HT_CAP_AMPDU_FACTOR)padapter->driver_rx_ampdu_factor;
 else
  rtw_hal_get_def_var(padapter, HW_VAR_MAX_RX_AMPDU_FACTOR,
        &max_rx_ampdu_factor);


 ht_capie.ampdu_params_info = (max_rx_ampdu_factor&0x03);

 if (padapter->securitypriv.dot11PrivacyAlgrthm == _AES_)
  ht_capie.ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY&(0x07<<2));
 else
  ht_capie.ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY&0x00);

 pframe = rtw_set_ie(out_ie+out_len, _HT_CAPABILITY_IE_,
      sizeof(struct rtw_ieee80211_ht_cap), (unsigned char *)&ht_capie, pout_len);

 phtpriv->ht_option = 1;

 if (in_ie != ((void*)0)) {
  p = rtw_get_ie(in_ie, _HT_ADD_INFO_IE_, &ielen, in_len);
  if (p && (ielen == sizeof(struct ieee80211_ht_addt_info))) {
   out_len = *pout_len;
   pframe = rtw_set_ie(out_ie+out_len, _HT_ADD_INFO_IE_, ielen, p+2, pout_len);
  }
 }

 return phtpriv->ht_option;

}
