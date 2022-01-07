
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_ampdu_min_spacing; int ch_offset; int ht_option; } ;
struct sta_info {scalar_t__ bw_mode; scalar_t__ pid; scalar_t__ isrc; TYPE_1__ htpriv; int stbc; int ldpc; int raid; int qos_option; int cts2self; int rtsen; } ;
struct pkt_attrib {int ampdu_spacing; scalar_t__ bwmode; int ampdu_en; int retry_ctrl; int pctrl; int ch_offset; int ht_en; int stbc; int ldpc; int sgi; int raid; int qos_en; scalar_t__ triggered; scalar_t__ eosp; scalar_t__ mdata; int cts2self; int rtsen; } ;
struct mlme_ext_priv {scalar_t__ cur_bwmode; } ;
struct adapter {int driver_ampdu_spacing; struct mlme_ext_priv mlmeextpriv; } ;


 int query_ra_short_GI (struct sta_info*) ;

__attribute__((used)) static void update_attrib_phy_info(struct adapter *padapter, struct pkt_attrib *pattrib, struct sta_info *psta)
{
 struct mlme_ext_priv *mlmeext = &padapter->mlmeextpriv;

 pattrib->rtsen = psta->rtsen;
 pattrib->cts2self = psta->cts2self;

 pattrib->mdata = 0;
 pattrib->eosp = 0;
 pattrib->triggered = 0;
 pattrib->ampdu_spacing = 0;


 pattrib->qos_en = psta->qos_option;

 pattrib->raid = psta->raid;

 if (mlmeext->cur_bwmode < psta->bw_mode)
  pattrib->bwmode = mlmeext->cur_bwmode;
 else
  pattrib->bwmode = psta->bw_mode;

 pattrib->sgi = query_ra_short_GI(psta);

 pattrib->ldpc = psta->ldpc;
 pattrib->stbc = psta->stbc;

 pattrib->ht_en = psta->htpriv.ht_option;
 pattrib->ch_offset = psta->htpriv.ch_offset;
 pattrib->ampdu_en = 0;

 if (padapter->driver_ampdu_spacing != 0xFF)
  pattrib->ampdu_spacing = padapter->driver_ampdu_spacing;
 else
  pattrib->ampdu_spacing = psta->htpriv.rx_ampdu_min_spacing;
 pattrib->retry_ctrl = 0;






}
