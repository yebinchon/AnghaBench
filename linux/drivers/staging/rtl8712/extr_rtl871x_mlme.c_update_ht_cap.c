
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
typedef int u8 ;
struct TYPE_2__ {int MacAddress; } ;
struct wlan_network {TYPE_1__ network; } ;
struct sta_info {struct recv_reorder_ctrl* recvreorder_ctrl; } ;
struct registry_priv {int ampdu_enable; } ;
struct recv_reorder_ctrl {int indicate_seq; int wend_b; } ;
struct ht_priv {int ampdu_enable; int rx_ampdu_maxlen; int ht_option; } ;
struct mlme_priv {struct wlan_network cur_network; struct ht_priv htpriv; } ;
struct ieee80211_ht_cap {int ampdu_params_info; } ;
struct _adapter {int stapriv; struct registry_priv registrypriv; struct mlme_priv mlmepriv; } ;
struct NDIS_802_11_FIXED_IEs {int dummy; } ;


 int IEEE80211_HT_CAP_AMPDU_FACTOR ;
 int _HT_ADD_INFO_IE_ ;
 int _HT_CAPABILITY_IE_ ;
 struct sta_info* r8712_get_bcmc_stainfo (struct _adapter*) ;
 int* r8712_get_ie (int*,int ,scalar_t__*,scalar_t__) ;
 struct sta_info* r8712_get_stainfo (int *,int ) ;

__attribute__((used)) static void update_ht_cap(struct _adapter *padapter, u8 *pie, uint ie_len)
{
 u8 *p, max_ampdu_sz;
 int i;
 uint len;
 struct sta_info *bmc_sta, *psta;
 struct ieee80211_ht_cap *pht_capie;
 struct recv_reorder_ctrl *preorder_ctrl;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct ht_priv *phtpriv = &pmlmepriv->htpriv;
 struct registry_priv *pregistrypriv = &padapter->registrypriv;
 struct wlan_network *pcur_network = &(pmlmepriv->cur_network);

 if (!phtpriv->ht_option)
  return;

 if (!phtpriv->ampdu_enable &&
     (pregistrypriv->ampdu_enable == 1))
  phtpriv->ampdu_enable = 1;

 len = 0;
 p = r8712_get_ie(pie + sizeof(struct NDIS_802_11_FIXED_IEs),
    _HT_CAPABILITY_IE_,
    &len, ie_len -
    sizeof(struct NDIS_802_11_FIXED_IEs));
 if (p && len > 0) {
  pht_capie = (struct ieee80211_ht_cap *)(p + 2);
  max_ampdu_sz = (pht_capie->ampdu_params_info &
    IEEE80211_HT_CAP_AMPDU_FACTOR);

  max_ampdu_sz = 1 << (max_ampdu_sz + 3);
  phtpriv->rx_ampdu_maxlen = max_ampdu_sz;
 }





 bmc_sta = r8712_get_bcmc_stainfo(padapter);
 if (bmc_sta) {
  for (i = 0; i < 16; i++) {
   preorder_ctrl = &bmc_sta->recvreorder_ctrl[i];
   preorder_ctrl->indicate_seq = 0xffff;
   preorder_ctrl->wend_b = 0xffff;
  }
 }
 psta = r8712_get_stainfo(&padapter->stapriv,
     pcur_network->network.MacAddress);
 if (psta) {
  for (i = 0; i < 16; i++) {
   preorder_ctrl = &psta->recvreorder_ctrl[i];
   preorder_ctrl->indicate_seq = 0xffff;
   preorder_ctrl->wend_b = 0xffff;
  }
 }
 len = 0;
 p = r8712_get_ie(pie + sizeof(struct NDIS_802_11_FIXED_IEs),
     _HT_ADD_INFO_IE_, &len,
     ie_len - sizeof(struct NDIS_802_11_FIXED_IEs));
}
