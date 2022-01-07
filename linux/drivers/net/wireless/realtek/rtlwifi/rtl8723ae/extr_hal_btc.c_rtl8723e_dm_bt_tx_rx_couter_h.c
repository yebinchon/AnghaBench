
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ high_priority_rx; scalar_t__ high_priority_tx; } ;


 TYPE_1__ hal_coex_8723 ;

__attribute__((used)) static u32 rtl8723e_dm_bt_tx_rx_couter_h(struct ieee80211_hw *hw)
{
 u32 counters = 0;

 counters = hal_coex_8723.high_priority_tx +
   hal_coex_8723.high_priority_rx;
 return counters;
}
