
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_frame_desc {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int driver_data; } ;


 int BUILD_BUG_ON (int) ;
 TYPE_1__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_INFO_DRIVER_DATA_SIZE ;

__attribute__((used)) static inline struct skb_frame_desc* get_skb_frame_desc(struct sk_buff *skb)
{
 BUILD_BUG_ON(sizeof(struct skb_frame_desc) >
       IEEE80211_TX_INFO_DRIVER_DATA_SIZE);
 return (struct skb_frame_desc *)&IEEE80211_SKB_CB(skb)->driver_data;
}
