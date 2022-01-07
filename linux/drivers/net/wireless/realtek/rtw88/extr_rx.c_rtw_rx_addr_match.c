
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_rx_pkt_stat {int phy_status; scalar_t__ icv_err; scalar_t__ crc_err; } ;
struct rtw_rx_addr_match_data {int bssid; struct rtw_rx_pkt_stat* pkt_stat; struct ieee80211_hdr* hdr; struct rtw_dev* rtwdev; } ;
struct rtw_dev {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;


 int get_hdr_bssid (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 int rtw_iterate_vifs_atomic (struct rtw_dev*,int ,struct rtw_rx_addr_match_data*) ;
 int rtw_rx_addr_match_iter ;

__attribute__((used)) static void rtw_rx_addr_match(struct rtw_dev *rtwdev,
         struct rtw_rx_pkt_stat *pkt_stat,
         struct ieee80211_hdr *hdr)
{
 struct rtw_rx_addr_match_data data = {};

 if (pkt_stat->crc_err || pkt_stat->icv_err || !pkt_stat->phy_status ||
     ieee80211_is_ctl(hdr->frame_control))
  return;

 data.rtwdev = rtwdev;
 data.hdr = hdr;
 data.pkt_stat = pkt_stat;
 data.bssid = get_hdr_bssid(hdr);

 rtw_iterate_vifs_atomic(rtwdev, rtw_rx_addr_match_iter, &data);
}
