
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_TX_REPORT ;
 int DBG_LOUD ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_STAT_ACK ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status_irqsafe (struct ieee80211_hw*,struct sk_buff*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl_tx_status(struct ieee80211_hw *hw, struct sk_buff *skb,
     bool ack)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct ieee80211_tx_info *info;

 info = IEEE80211_SKB_CB(skb);
 ieee80211_tx_info_clear_status(info);
 if (ack) {
  RT_TRACE(rtlpriv, COMP_TX_REPORT, DBG_LOUD,
    "tx report: ack\n");
  info->flags |= IEEE80211_TX_STAT_ACK;
 } else {
  RT_TRACE(rtlpriv, COMP_TX_REPORT, DBG_LOUD,
    "tx report: not ack\n");
  info->flags &= ~IEEE80211_TX_STAT_ACK;
 }
 ieee80211_tx_status_irqsafe(hw, skb);
}
