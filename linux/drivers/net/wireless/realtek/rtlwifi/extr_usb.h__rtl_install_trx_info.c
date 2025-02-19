
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct rtl_usb {int dummy; } ;
struct ieee80211_tx_info {struct rtl_usb** rate_driver_data; } ;
typedef scalar_t__ __kernel_size_t ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;

__attribute__((used)) static inline void _rtl_install_trx_info(struct rtl_usb *rtlusb,
      struct sk_buff *skb,
      u32 ep_num)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);

 info->rate_driver_data[0] = rtlusb;
 info->rate_driver_data[1] = (void *)(__kernel_size_t)ep_num;
}
