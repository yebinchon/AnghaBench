
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct rtw_tx_pkt_info {int sn; int report; int short_gi; int ls; int ampdu_en; int ldpc; int stbc; int ampdu_density; int ampdu_factor; int seq; int bw; int sec_type; int use_rate; int dis_rate_fallback; int rate; int rate_id; int bmc; int qsel; int pkt_offset; int offset; int tx_pkt_size; } ;
typedef int __le32 ;


 int SET_TX_DESC_AGG_EN (int *,int ) ;
 int SET_TX_DESC_AMPDU_DENSITY (int *,int ) ;
 int SET_TX_DESC_BMC (int *,int ) ;
 int SET_TX_DESC_DATARATE (int *,int ) ;
 int SET_TX_DESC_DATA_BW (int *,int ) ;
 int SET_TX_DESC_DATA_LDPC (int *,int ) ;
 int SET_TX_DESC_DATA_SHORT (int *,int ) ;
 int SET_TX_DESC_DATA_STBC (int *,int ) ;
 int SET_TX_DESC_DISDATAFB (int *,int ) ;
 int SET_TX_DESC_LS (int *,int ) ;
 int SET_TX_DESC_MAX_AGG_NUM (int *,int ) ;
 int SET_TX_DESC_OFFSET (int *,int ) ;
 int SET_TX_DESC_PKT_OFFSET (int *,int ) ;
 int SET_TX_DESC_QSEL (int *,int ) ;
 int SET_TX_DESC_RATE_ID (int *,int ) ;
 int SET_TX_DESC_SEC_TYPE (int *,int ) ;
 int SET_TX_DESC_SPE_RPT (int *,int ) ;
 int SET_TX_DESC_SW_DEFINE (int *,int ) ;
 int SET_TX_DESC_SW_SEQ (int *,int ) ;
 int SET_TX_DESC_TXPKTSIZE (int *,int ) ;
 int SET_TX_DESC_USE_RATE (int *,int ) ;

void rtw_tx_fill_tx_desc(struct rtw_tx_pkt_info *pkt_info, struct sk_buff *skb)
{
 __le32 *txdesc = (__le32 *)skb->data;

 SET_TX_DESC_TXPKTSIZE(txdesc, pkt_info->tx_pkt_size);
 SET_TX_DESC_OFFSET(txdesc, pkt_info->offset);
 SET_TX_DESC_PKT_OFFSET(txdesc, pkt_info->pkt_offset);
 SET_TX_DESC_QSEL(txdesc, pkt_info->qsel);
 SET_TX_DESC_BMC(txdesc, pkt_info->bmc);
 SET_TX_DESC_RATE_ID(txdesc, pkt_info->rate_id);
 SET_TX_DESC_DATARATE(txdesc, pkt_info->rate);
 SET_TX_DESC_DISDATAFB(txdesc, pkt_info->dis_rate_fallback);
 SET_TX_DESC_USE_RATE(txdesc, pkt_info->use_rate);
 SET_TX_DESC_SEC_TYPE(txdesc, pkt_info->sec_type);
 SET_TX_DESC_DATA_BW(txdesc, pkt_info->bw);
 SET_TX_DESC_SW_SEQ(txdesc, pkt_info->seq);
 SET_TX_DESC_MAX_AGG_NUM(txdesc, pkt_info->ampdu_factor);
 SET_TX_DESC_AMPDU_DENSITY(txdesc, pkt_info->ampdu_density);
 SET_TX_DESC_DATA_STBC(txdesc, pkt_info->stbc);
 SET_TX_DESC_DATA_LDPC(txdesc, pkt_info->ldpc);
 SET_TX_DESC_AGG_EN(txdesc, pkt_info->ampdu_en);
 SET_TX_DESC_LS(txdesc, pkt_info->ls);
 SET_TX_DESC_DATA_SHORT(txdesc, pkt_info->short_gi);
 SET_TX_DESC_SPE_RPT(txdesc, pkt_info->report);
 SET_TX_DESC_SW_DEFINE(txdesc, pkt_info->sn);
}
