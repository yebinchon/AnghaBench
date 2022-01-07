
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlan_bssid_ex {struct ht_priv* SupportedRates; } ;
struct sta_info {int bssratelen; int qos_option; int htpriv; int bw_mode; int * bssrateset; int wireless_mode; } ;
struct TYPE_4__ {int cap_info; } ;
struct ht_priv {int sgi_20m; int sgi_40m; int ampdu_enable; int agg_enable_bitmap; int candidate_tid_bitmap; int ch_offset; TYPE_2__ ht_cap; scalar_t__ ht_option; } ;
struct TYPE_3__ {int network; } ;
struct mlme_priv {struct ht_priv htpriv; TYPE_1__ cur_network; } ;
struct mlme_ext_priv {int cur_ch_offset; int cur_bwmode; int cur_wireless_mode; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;


 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int cpu_to_le16 (int ) ;
 int memcpy (int *,struct ht_priv*,int) ;
 int rtw_get_rateset_len (struct ht_priv*) ;

__attribute__((used)) static void update_ap_info(struct adapter *padapter, struct sta_info *psta)
{
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 struct wlan_bssid_ex
  *pnetwork = (struct wlan_bssid_ex *)&pmlmepriv->cur_network.network;
 struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 struct ht_priv *phtpriv_ap = &pmlmepriv->htpriv;

 psta->wireless_mode = pmlmeext->cur_wireless_mode;

 psta->bssratelen = rtw_get_rateset_len(pnetwork->SupportedRates);
 memcpy(psta->bssrateset, pnetwork->SupportedRates, psta->bssratelen);


 if (phtpriv_ap->ht_option) {




  if ((phtpriv_ap->ht_cap.cap_info) & cpu_to_le16(IEEE80211_HT_CAP_SGI_20))
   phtpriv_ap->sgi_20m = 1;


  if ((phtpriv_ap->ht_cap.cap_info) & cpu_to_le16(IEEE80211_HT_CAP_SGI_40))
   phtpriv_ap->sgi_40m = 1;

  psta->qos_option = 1;
 } else {
  phtpriv_ap->ampdu_enable = 0;

  phtpriv_ap->sgi_20m = 0;
  phtpriv_ap->sgi_40m = 0;
 }

 psta->bw_mode = pmlmeext->cur_bwmode;
 phtpriv_ap->ch_offset = pmlmeext->cur_ch_offset;

 phtpriv_ap->agg_enable_bitmap = 0x0;
 phtpriv_ap->candidate_tid_bitmap = 0x0;

 memcpy(&psta->htpriv, &pmlmepriv->htpriv, sizeof(struct ht_priv));
}
