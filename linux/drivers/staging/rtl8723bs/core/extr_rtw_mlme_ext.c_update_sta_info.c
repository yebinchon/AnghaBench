
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int ht_option; int ampdu_enable; int rx_ampdu_min_spacing; int sgi_20m; int sgi_40m; int agg_enable_bitmap; int candidate_tid_bitmap; int ch_offset; int ht_cap; int beamform_cap; int stbc_cap; int ldpc_cap; } ;
struct sta_info {int qos_option; int lock; int state; int bw_mode; TYPE_4__ htpriv; } ;
struct rtw_ieee80211_ht_cap {int dummy; } ;
struct TYPE_12__ {scalar_t__ qos_option; } ;
struct TYPE_10__ {int ampdu_enable; int beamform_cap; int stbc_cap; int ldpc_cap; scalar_t__ ht_option; } ;
struct mlme_priv {TYPE_5__ qospriv; TYPE_3__ htpriv; } ;
struct TYPE_8__ {int AMPDU_para; } ;
struct TYPE_9__ {TYPE_1__ HT_cap_element; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
struct mlme_ext_info {TYPE_6__ HT_caps; } ;
struct mlme_ext_priv {int cur_bwmode; int cur_ch_offset; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;


 int CHANNEL_WIDTH_20 ;
 int CHANNEL_WIDTH_40 ;
 int IEEE80211_HT_CAP_AMPDU_DENSITY ;
 int VCS_update (struct adapter*,struct sta_info*) ;
 int _FW_LINKED ;
 int memcpy (int *,TYPE_6__*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ support_short_GI (struct adapter*,TYPE_6__*,int ) ;
 int update_ldpc_stbc_cap (struct sta_info*) ;

void update_sta_info(struct adapter *padapter, struct sta_info *psta)
{
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);


 VCS_update(padapter, psta);


 if (pmlmepriv->htpriv.ht_option) {
  psta->htpriv.ht_option = 1;

  psta->htpriv.ampdu_enable = pmlmepriv->htpriv.ampdu_enable;

  psta->htpriv.rx_ampdu_min_spacing = (pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para&IEEE80211_HT_CAP_AMPDU_DENSITY)>>2;

  if (support_short_GI(padapter, &(pmlmeinfo->HT_caps), CHANNEL_WIDTH_20))
   psta->htpriv.sgi_20m = 1;

  if (support_short_GI(padapter, &(pmlmeinfo->HT_caps), CHANNEL_WIDTH_40))
   psta->htpriv.sgi_40m = 1;

  psta->qos_option = 1;

  psta->htpriv.ldpc_cap = pmlmepriv->htpriv.ldpc_cap;
  psta->htpriv.stbc_cap = pmlmepriv->htpriv.stbc_cap;
  psta->htpriv.beamform_cap = pmlmepriv->htpriv.beamform_cap;

  memcpy(&psta->htpriv.ht_cap, &pmlmeinfo->HT_caps, sizeof(struct rtw_ieee80211_ht_cap));
 } else {
  psta->htpriv.ht_option = 0;

  psta->htpriv.ampdu_enable = 0;

  psta->htpriv.sgi_20m = 0;
  psta->htpriv.sgi_40m = 0;
  psta->qos_option = 0;

 }

 psta->htpriv.ch_offset = pmlmeext->cur_ch_offset;

 psta->htpriv.agg_enable_bitmap = 0x0;
 psta->htpriv.candidate_tid_bitmap = 0x0;

 psta->bw_mode = pmlmeext->cur_bwmode;


 if (pmlmepriv->qospriv.qos_option)
  psta->qos_option = 1;

 update_ldpc_stbc_cap(psta);

 spin_lock_bh(&psta->lock);
 psta->state = _FW_LINKED;
 spin_unlock_bh(&psta->lock);

}
