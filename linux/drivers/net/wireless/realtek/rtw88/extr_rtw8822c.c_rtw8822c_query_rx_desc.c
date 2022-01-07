
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtw_rx_pkt_stat {int decrypted; int drv_info_sz; int shift; int phy_status; scalar_t__ is_c2h; int tsf_low; int ppdu_cnt; int cam_id; int rate; int pkt_len; int crc_err; int icv_err; } ;
struct rtw_dev {TYPE_1__* chip; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_2__ {int rx_pkt_desc_sz; } ;


 scalar_t__ GET_RX_DESC_C2H (int *) ;
 int GET_RX_DESC_CRC32 (int *) ;
 int GET_RX_DESC_DRV_INFO_SIZE (int *) ;
 int GET_RX_DESC_ICV_ERR (int *) ;
 int GET_RX_DESC_MACID (int *) ;
 int GET_RX_DESC_PHYST (int *) ;
 int GET_RX_DESC_PKT_LEN (int *) ;
 int GET_RX_DESC_PPDU_CNT (int *) ;
 int GET_RX_DESC_RX_RATE (int *) ;
 int GET_RX_DESC_SHIFT (int *) ;
 int GET_RX_DESC_SWDEC (int *) ;
 int GET_RX_DESC_TSFL (int *) ;
 int memset (struct rtw_rx_pkt_stat*,int ,int) ;
 int query_phy_status (struct rtw_dev*,int *,struct rtw_rx_pkt_stat*) ;
 int rtw_rx_fill_rx_status (struct rtw_dev*,struct rtw_rx_pkt_stat*,struct ieee80211_hdr*,struct ieee80211_rx_status*,int *) ;

__attribute__((used)) static void rtw8822c_query_rx_desc(struct rtw_dev *rtwdev, u8 *rx_desc,
       struct rtw_rx_pkt_stat *pkt_stat,
       struct ieee80211_rx_status *rx_status)
{
 struct ieee80211_hdr *hdr;
 u32 desc_sz = rtwdev->chip->rx_pkt_desc_sz;
 u8 *phy_status = ((void*)0);

 memset(pkt_stat, 0, sizeof(*pkt_stat));

 pkt_stat->phy_status = GET_RX_DESC_PHYST(rx_desc);
 pkt_stat->icv_err = GET_RX_DESC_ICV_ERR(rx_desc);
 pkt_stat->crc_err = GET_RX_DESC_CRC32(rx_desc);
 pkt_stat->decrypted = !GET_RX_DESC_SWDEC(rx_desc);
 pkt_stat->is_c2h = GET_RX_DESC_C2H(rx_desc);
 pkt_stat->pkt_len = GET_RX_DESC_PKT_LEN(rx_desc);
 pkt_stat->drv_info_sz = GET_RX_DESC_DRV_INFO_SIZE(rx_desc);
 pkt_stat->shift = GET_RX_DESC_SHIFT(rx_desc);
 pkt_stat->rate = GET_RX_DESC_RX_RATE(rx_desc);
 pkt_stat->cam_id = GET_RX_DESC_MACID(rx_desc);
 pkt_stat->ppdu_cnt = GET_RX_DESC_PPDU_CNT(rx_desc);
 pkt_stat->tsf_low = GET_RX_DESC_TSFL(rx_desc);


 pkt_stat->drv_info_sz *= 8;


 if (pkt_stat->is_c2h)
  return;

 hdr = (struct ieee80211_hdr *)(rx_desc + desc_sz + pkt_stat->shift +
           pkt_stat->drv_info_sz);
 if (pkt_stat->phy_status) {
  phy_status = rx_desc + desc_sz + pkt_stat->shift;
  query_phy_status(rtwdev, phy_status, pkt_stat);
 }

 rtw_rx_fill_rx_status(rtwdev, pkt_stat, hdr, rx_status, phy_status);
}
