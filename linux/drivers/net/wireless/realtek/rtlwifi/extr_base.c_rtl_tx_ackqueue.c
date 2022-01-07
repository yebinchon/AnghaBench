
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtl_tx_report {int queue; } ;
struct rtl_priv {struct rtl_tx_report tx_report; } ;
struct ieee80211_hw {int dummy; } ;


 int __skb_queue_tail (int *,struct sk_buff*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl_tx_ackqueue(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_tx_report *tx_report = &rtlpriv->tx_report;

 __skb_queue_tail(&tx_report->queue, skb);
}
