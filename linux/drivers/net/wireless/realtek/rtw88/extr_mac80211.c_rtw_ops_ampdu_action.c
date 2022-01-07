
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_ampdu_params {int action; int tid; struct ieee80211_sta* sta; } ;


 int ENOTSUPP ;







 int WARN_ON (int) ;
 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,int ) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,int ) ;

__attribute__((used)) static int rtw_ops_ampdu_action(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    struct ieee80211_ampdu_params *params)
{
 struct ieee80211_sta *sta = params->sta;
 u16 tid = params->tid;

 switch (params->action) {
 case 131:
  ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 case 130:
 case 129:
 case 128:
  ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 case 132:
 case 134:
 case 133:
  break;
 default:
  WARN_ON(1);
  return -ENOTSUPP;
 }

 return 0;
}
