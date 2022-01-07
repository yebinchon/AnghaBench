
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xmit_priv {int tx_bytes; } ;
struct TYPE_4__ {struct sta_info* psta; } ;
struct xmit_frame {int frame_tag; scalar_t__ agg_num; TYPE_2__ attrib; } ;
struct stainfo_stats {int tx_bytes; int tx_pkts; } ;
struct sta_info {struct stainfo_stats sta_stats; } ;
struct TYPE_3__ {int NumTxOkInPeriod; } ;
struct mlme_priv {TYPE_1__ LinkDetectInfo; } ;
struct adapter {struct mlme_priv mlmepriv; struct xmit_priv xmitpriv; } ;


 int DATA_FRAMETAG ;

void rtw_count_tx_stats(struct adapter *padapter, struct xmit_frame *pxmitframe, int sz)
{
 struct sta_info *psta = ((void*)0);
 struct stainfo_stats *pstats = ((void*)0);
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 if ((pxmitframe->frame_tag & 0x0f) == DATA_FRAMETAG) {
  pxmitpriv->tx_bytes += sz;
  pmlmepriv->LinkDetectInfo.NumTxOkInPeriod += pxmitframe->agg_num;

  psta = pxmitframe->attrib.psta;
  if (psta) {
   pstats = &psta->sta_stats;
   pstats->tx_pkts += pxmitframe->agg_num;
   pstats->tx_bytes += sz;
  }
 }
}
