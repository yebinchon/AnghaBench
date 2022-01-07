
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ampdu_factor; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; } ;


 int BIT (int) ;

__attribute__((used)) static u8 get_tx_ampdu_factor(struct ieee80211_sta *sta)
{
 u8 exp = sta->ht_cap.ampdu_factor;





 return (BIT(2) << exp) - 1;
}
