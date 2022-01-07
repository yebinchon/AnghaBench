
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le16 ;


 size_t ARRAY_SIZE (size_t*) ;
 size_t IEEE80211_AC_BE ;
 size_t RTW_TX_QUEUE_BCN ;
 size_t RTW_TX_QUEUE_MGMT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 size_t* ac_to_hwq ;
 int ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u8 rtw_hw_queue_mapping(struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 __le16 fc = hdr->frame_control;
 u8 q_mapping = skb_get_queue_mapping(skb);
 u8 queue;

 if (unlikely(ieee80211_is_beacon(fc)))
  queue = RTW_TX_QUEUE_BCN;
 else if (unlikely(ieee80211_is_mgmt(fc) || ieee80211_is_ctl(fc)))
  queue = RTW_TX_QUEUE_MGMT;
 else if (WARN_ON_ONCE(q_mapping >= ARRAY_SIZE(ac_to_hwq)))
  queue = ac_to_hwq[IEEE80211_AC_BE];
 else
  queue = ac_to_hwq[q_mapping];

 return queue;
}
