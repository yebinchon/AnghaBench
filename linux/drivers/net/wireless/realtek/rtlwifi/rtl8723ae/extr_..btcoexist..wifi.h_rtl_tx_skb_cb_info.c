
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rtlwifi_tx_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ status_driver_data; } ;
struct ieee80211_tx_info {TYPE_1__ status; } ;


 int BUILD_BUG_ON (int) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;

__attribute__((used)) static inline struct rtlwifi_tx_info *rtl_tx_skb_cb_info(struct sk_buff *skb)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);

 BUILD_BUG_ON(sizeof(struct rtlwifi_tx_info) >
       sizeof(info->status.status_driver_data));

 return (struct rtlwifi_tx_info *)(info->status.status_driver_data);
}
