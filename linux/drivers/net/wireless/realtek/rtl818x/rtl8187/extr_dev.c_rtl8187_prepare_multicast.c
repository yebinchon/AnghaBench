
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct netdev_hw_addr_list {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int netdev_hw_addr_list_count (struct netdev_hw_addr_list*) ;

__attribute__((used)) static u64 rtl8187_prepare_multicast(struct ieee80211_hw *dev,
         struct netdev_hw_addr_list *mc_list)
{
 return netdev_hw_addr_list_count(mc_list);
}
