
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ht_option; int ampdu_enable; int sgi; int agg_enable_bitmap; int candidate_tid_bitmap; int ch_offset; int bwmode; } ;
struct sta_info {int qos_option; int state; TYPE_2__ htpriv; } ;
struct TYPE_6__ {scalar_t__ qos_option; } ;
struct TYPE_4__ {int ampdu_enable; scalar_t__ ht_option; } ;
struct mlme_priv {TYPE_3__ qospriv; TYPE_1__ htpriv; } ;
struct mlme_ext_info {int HT_caps; } ;
struct mlme_ext_priv {int cur_ch_offset; int cur_bwmode; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;


 int VCS_update (struct adapter*,struct sta_info*) ;
 int _FW_LINKED ;
 scalar_t__ support_short_GI (struct adapter*,int *) ;

void update_sta_info(struct adapter *padapter, struct sta_info *psta)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;


 VCS_update(padapter, psta);


 if (pmlmepriv->htpriv.ht_option) {
  psta->htpriv.ht_option = 1;

  psta->htpriv.ampdu_enable = pmlmepriv->htpriv.ampdu_enable;

  if (support_short_GI(padapter, &pmlmeinfo->HT_caps))
   psta->htpriv.sgi = 1;

  psta->qos_option = 1;
 } else {
  psta->htpriv.ht_option = 0;

  psta->htpriv.ampdu_enable = 0;

  psta->htpriv.sgi = 0;
  psta->qos_option = 0;
 }
 psta->htpriv.bwmode = pmlmeext->cur_bwmode;
 psta->htpriv.ch_offset = pmlmeext->cur_ch_offset;

 psta->htpriv.agg_enable_bitmap = 0x0;
 psta->htpriv.candidate_tid_bitmap = 0x0;


 if (pmlmepriv->qospriv.qos_option)
  psta->qos_option = 1;

 psta->state = _FW_LINKED;
}
