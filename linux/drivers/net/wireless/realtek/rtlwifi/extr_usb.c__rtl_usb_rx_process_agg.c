
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ len; int * data; } ;
struct rtl_stats {int crc; scalar_t__ rx_bufshift; scalar_t__ rx_drvinfo_size; int rate; int signal; } ;
struct TYPE_8__ {int num_rx_inperiod; } ;
struct TYPE_5__ {int rxbytesunicast; } ;
struct rtl_priv {TYPE_4__ link_info; TYPE_3__* cfg; TYPE_1__ stats; } ;
struct ieee80211_rx_status {int member_0; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
typedef int rx_status ;
typedef int __le16 ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int (* led_control ) (struct ieee80211_hw*,int ) ;int (* query_rx_desc ) (struct ieee80211_hw*,struct rtl_stats*,struct ieee80211_rx_status*,int *,struct sk_buff*) ;} ;


 int IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int LED_CTL_RX ;
 scalar_t__ RTL_RX_DESC_SIZE ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int memcpy (int ,struct ieee80211_rx_status*,int) ;
 int rtl_beacon_statistic (struct ieee80211_hw*,struct sk_buff*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int stub1 (struct ieee80211_hw*,struct rtl_stats*,struct ieee80211_rx_status*,int *,struct sk_buff*) ;
 int stub2 (struct ieee80211_hw*,int ) ;

__attribute__((used)) static void _rtl_usb_rx_process_agg(struct ieee80211_hw *hw,
        struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 *rxdesc = skb->data;
 struct ieee80211_hdr *hdr;
 bool unicast = 0;
 __le16 fc;
 struct ieee80211_rx_status rx_status = {0};
 struct rtl_stats stats = {
  .signal = 0,
  .rate = 0,
 };

 skb_pull(skb, RTL_RX_DESC_SIZE);
 rtlpriv->cfg->ops->query_rx_desc(hw, &stats, &rx_status, rxdesc, skb);
 skb_pull(skb, (stats.rx_drvinfo_size + stats.rx_bufshift));
 hdr = (struct ieee80211_hdr *)(skb->data);
 fc = hdr->frame_control;
 if (!stats.crc) {
  memcpy(IEEE80211_SKB_RXCB(skb), &rx_status, sizeof(rx_status));

  if (is_broadcast_ether_addr(hdr->addr1)) {
           ;
  } else if (is_multicast_ether_addr(hdr->addr1)) {

  } else {
   unicast = 1;
   rtlpriv->stats.rxbytesunicast += skb->len;
  }

  if (ieee80211_is_data(fc)) {
   rtlpriv->cfg->ops->led_control(hw, LED_CTL_RX);

   if (unicast)
    rtlpriv->link_info.num_rx_inperiod++;
  }

  rtl_beacon_statistic(hw, skb);
 }
}
