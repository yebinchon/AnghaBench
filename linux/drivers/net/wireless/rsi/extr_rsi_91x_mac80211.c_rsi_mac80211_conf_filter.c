
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ieee80211_hw {int dummy; } ;


 int RSI_SUPP_FILTERS ;

__attribute__((used)) static void rsi_mac80211_conf_filter(struct ieee80211_hw *hw,
         u32 changed_flags,
         u32 *total_flags,
         u64 multicast)
{

 *total_flags &= RSI_SUPP_FILTERS;
}
