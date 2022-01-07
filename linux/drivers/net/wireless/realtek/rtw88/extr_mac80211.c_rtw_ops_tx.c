
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtw_tx_pkt_info {int member_0; } ;
struct rtw_dev {int dummy; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int RTW_FLAG_RUNNING ;
 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 int rtw_flag_check (struct rtw_dev*,int ) ;
 scalar_t__ rtw_hci_tx (struct rtw_dev*,struct rtw_tx_pkt_info*,struct sk_buff*) ;
 int rtw_tx_pkt_info_update (struct rtw_dev*,struct rtw_tx_pkt_info*,struct ieee80211_tx_control*,struct sk_buff*) ;

__attribute__((used)) static void rtw_ops_tx(struct ieee80211_hw *hw,
         struct ieee80211_tx_control *control,
         struct sk_buff *skb)
{
 struct rtw_dev *rtwdev = hw->priv;
 struct rtw_tx_pkt_info pkt_info = {0};

 if (!rtw_flag_check(rtwdev, RTW_FLAG_RUNNING))
  goto out;

 rtw_tx_pkt_info_update(rtwdev, &pkt_info, control, skb);
 if (rtw_hci_tx(rtwdev, &pkt_info, skb))
  goto out;

 return;

out:
 ieee80211_free_txskb(hw, skb);
}
