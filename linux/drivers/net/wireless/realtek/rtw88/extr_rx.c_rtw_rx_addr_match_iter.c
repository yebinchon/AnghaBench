
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtw_sta_info {int avg_rssi; } ;
struct rtw_rx_pkt_stat {int rssi; } ;
struct rtw_rx_addr_match_data {int * bssid; struct rtw_rx_pkt_stat* pkt_stat; struct rtw_dev* rtwdev; struct ieee80211_hdr* hdr; } ;
struct rtw_dev {int hw; } ;
struct TYPE_2__ {int bssid; } ;
struct ieee80211_vif {int addr; TYPE_1__ bss_conf; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int addr2; int frame_control; int * addr1; } ;


 scalar_t__ ether_addr_equal (int ,int *) ;
 int ewma_rssi_add (int *,int ) ;
 struct ieee80211_sta* ieee80211_find_sta_by_ifaddr (int ,int ,int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;

__attribute__((used)) static void rtw_rx_addr_match_iter(void *data, u8 *mac,
       struct ieee80211_vif *vif)
{
 struct rtw_rx_addr_match_data *iter_data = data;
 struct ieee80211_sta *sta;
 struct ieee80211_hdr *hdr = iter_data->hdr;
 struct rtw_dev *rtwdev = iter_data->rtwdev;
 struct rtw_sta_info *si;
 struct rtw_rx_pkt_stat *pkt_stat = iter_data->pkt_stat;
 u8 *bssid = iter_data->bssid;

 if (ether_addr_equal(vif->bss_conf.bssid, bssid) &&
     (ether_addr_equal(vif->addr, hdr->addr1) ||
      ieee80211_is_beacon(hdr->frame_control)))
  sta = ieee80211_find_sta_by_ifaddr(rtwdev->hw, hdr->addr2,
         vif->addr);
 else
  return;

 if (!sta)
  return;

 si = (struct rtw_sta_info *)sta->drv_priv;
 ewma_rssi_add(&si->avg_rssi, pkt_stat->rssi);
}
