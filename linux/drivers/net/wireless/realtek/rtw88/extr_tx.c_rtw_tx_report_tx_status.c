
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtw_dev {int hw; } ;
struct ieee80211_tx_info {int flags; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_STAT_ACK ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status_irqsafe (int ,struct sk_buff*) ;

__attribute__((used)) static void rtw_tx_report_tx_status(struct rtw_dev *rtwdev,
        struct sk_buff *skb, bool acked)
{
 struct ieee80211_tx_info *info;

 info = IEEE80211_SKB_CB(skb);
 ieee80211_tx_info_clear_status(info);
 if (acked)
  info->flags |= IEEE80211_TX_STAT_ACK;
 else
  info->flags &= ~IEEE80211_TX_STAT_ACK;

 ieee80211_tx_status_irqsafe(rtwdev->hw, skb);
}
