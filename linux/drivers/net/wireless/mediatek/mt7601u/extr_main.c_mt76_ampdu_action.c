
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {scalar_t__ idx; } ;
struct mt76_sta {size_t* agg_ssn; TYPE_1__ wcid; } ;
struct mt7601u_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct mt7601u_dev* priv; } ;
struct ieee80211_ampdu_params {int action; size_t tid; size_t ssn; struct ieee80211_sta* sta; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;


 int BIT (int ) ;
 scalar_t__ GROUP_WCID (int ) ;







 int MT_WCID_ADDR (scalar_t__) ;
 int WARN_ON (int) ;
 int ieee80211_send_bar (struct ieee80211_vif*,int ,size_t,size_t) ;
 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 int mt76_clear (struct mt7601u_dev*,int ,int ) ;
 int mt76_set (struct mt7601u_dev*,int ,int ) ;

__attribute__((used)) static int
mt76_ampdu_action(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
    struct ieee80211_ampdu_params *params)
{
 struct mt7601u_dev *dev = hw->priv;
 struct ieee80211_sta *sta = params->sta;
 enum ieee80211_ampdu_mlme_action action = params->action;
 u16 tid = params->tid;
 u16 ssn = params->ssn;
 struct mt76_sta *msta = (struct mt76_sta *) sta->drv_priv;

 WARN_ON(msta->wcid.idx > GROUP_WCID(0));

 switch (action) {
 case 134:
  mt76_set(dev, MT_WCID_ADDR(msta->wcid.idx) + 4, BIT(16 + tid));
  break;
 case 133:
  mt76_clear(dev, MT_WCID_ADDR(msta->wcid.idx) + 4,
      BIT(16 + tid));
  break;
 case 132:
  ieee80211_send_bar(vif, sta->addr, tid, msta->agg_ssn[tid]);
  break;
 case 129:
 case 128:
  break;
 case 131:
  msta->agg_ssn[tid] = ssn << 4;
  ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 case 130:
  ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 }

 return 0;
}
