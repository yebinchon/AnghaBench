
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct rtw_tx_pkt_info {int use_rate; int rate_id; int dis_rate_fallback; int bmc; int ls; int qsel; int offset; int tx_pkt_size; } ;
struct rtw_dev {struct rtw_chip_info* chip; } ;
struct rtw_chip_info {int tx_pkt_desc_sz; } ;
struct ieee80211_hdr {int addr1; } ;


 int TX_DESC_QSEL_MGMT ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;

void rtw_rsvd_page_pkt_info_update(struct rtw_dev *rtwdev,
       struct rtw_tx_pkt_info *pkt_info,
       struct sk_buff *skb)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 bool bmc;

 bmc = is_broadcast_ether_addr(hdr->addr1) ||
       is_multicast_ether_addr(hdr->addr1);
 pkt_info->use_rate = 1;
 pkt_info->rate_id = 6;
 pkt_info->dis_rate_fallback = 1;
 pkt_info->bmc = bmc;
 pkt_info->tx_pkt_size = skb->len;
 pkt_info->offset = chip->tx_pkt_desc_sz;
 pkt_info->qsel = TX_DESC_QSEL_MGMT;
 pkt_info->ls = 1;
}
