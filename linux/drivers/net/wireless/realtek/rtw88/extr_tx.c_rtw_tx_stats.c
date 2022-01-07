
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ tx_cnt; int tx_unicast; } ;
struct rtw_vif {TYPE_2__ stats; } ;
struct TYPE_3__ {int tx_cnt; int tx_unicast; } ;
struct rtw_dev {TYPE_1__ stats; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;


 scalar_t__ RTW_LPS_THRESHOLD ;
 int ieee80211_is_data (int ) ;
 int is_broadcast_ether_addr (int ) ;
 int is_multicast_ether_addr (int ) ;
 int rtw_leave_lps_irqsafe (struct rtw_dev*,struct rtw_vif*) ;

__attribute__((used)) static
void rtw_tx_stats(struct rtw_dev *rtwdev, struct ieee80211_vif *vif,
    struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr;
 struct rtw_vif *rtwvif;

 hdr = (struct ieee80211_hdr *)skb->data;

 if (!ieee80211_is_data(hdr->frame_control))
  return;

 if (!is_broadcast_ether_addr(hdr->addr1) &&
     !is_multicast_ether_addr(hdr->addr1)) {
  rtwdev->stats.tx_unicast += skb->len;
  rtwdev->stats.tx_cnt++;
  if (vif) {
   rtwvif = (struct rtw_vif *)vif->drv_priv;
   rtwvif->stats.tx_unicast += skb->len;
   rtwvif->stats.tx_cnt++;
   if (rtwvif->stats.tx_cnt > RTW_LPS_THRESHOLD)
    rtw_leave_lps_irqsafe(rtwdev, rtwvif);
  }
 }
}
