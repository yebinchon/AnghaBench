
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_ampdu_params {int action; int ssn; int tid; struct ieee80211_sta* sta; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;


 int COMP_MAC80211 ;
 int DBG_TRACE ;
 int EOPNOTSUPP ;







 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 int pr_err (char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_rx_agg_start (struct ieee80211_hw*,struct ieee80211_sta*,int ) ;
 int rtl_rx_agg_stop (struct ieee80211_hw*,struct ieee80211_sta*,int ) ;
 int rtl_tx_agg_oper (struct ieee80211_hw*,struct ieee80211_sta*,int ) ;
 int rtl_tx_agg_start (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_sta*,int ,int *) ;
 int rtl_tx_agg_stop (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_sta*,int ) ;

__attribute__((used)) static int rtl_op_ampdu_action(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_ampdu_params *params)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct ieee80211_sta *sta = params->sta;
 enum ieee80211_ampdu_mlme_action action = params->action;
 u16 tid = params->tid;
 u16 *ssn = &params->ssn;

 switch (action) {
 case 131:
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_TRACE,
    "IEEE80211_AMPDU_TX_START: TID:%d\n", tid);
  return rtl_tx_agg_start(hw, vif, sta, tid, ssn);
 case 130:
 case 129:
 case 128:
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_TRACE,
    "IEEE80211_AMPDU_TX_STOP: TID:%d\n", tid);
  return rtl_tx_agg_stop(hw, vif, sta, tid);
 case 132:
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_TRACE,
    "IEEE80211_AMPDU_TX_OPERATIONAL:TID:%d\n", tid);
  rtl_tx_agg_oper(hw, sta, tid);
  break;
 case 134:
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_TRACE,
    "IEEE80211_AMPDU_RX_START:TID:%d\n", tid);
  return rtl_rx_agg_start(hw, sta, tid);
 case 133:
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_TRACE,
    "IEEE80211_AMPDU_RX_STOP:TID:%d\n", tid);
  return rtl_rx_agg_stop(hw, sta, tid);
 default:
  pr_err("IEEE80211_AMPDU_ERR!!!!:\n");
  return -EOPNOTSUPP;
 }
 return 0;
}
