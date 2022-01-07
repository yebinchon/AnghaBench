
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_ampdu_params {int dummy; } ;


 int ENOTSUPP ;

int cw1200_ampdu_action(struct ieee80211_hw *hw,
   struct ieee80211_vif *vif,
   struct ieee80211_ampdu_params *params)
{







 return -ENOTSUPP;
}
