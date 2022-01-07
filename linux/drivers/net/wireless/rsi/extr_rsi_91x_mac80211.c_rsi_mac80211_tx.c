
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct rsi_hw {struct rsi_common* priv; } ;
struct rsi_common {int mac_ops_resumed; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {struct rsi_hw* priv; } ;
struct ieee80211_hdr {int frame_control; } ;


 scalar_t__ ieee80211_is_auth (int ) ;
 int rsi_core_xmit (struct rsi_common*,struct sk_buff*) ;

__attribute__((used)) static void rsi_mac80211_tx(struct ieee80211_hw *hw,
       struct ieee80211_tx_control *control,
       struct sk_buff *skb)
{
 struct rsi_hw *adapter = hw->priv;
 struct rsi_common *common = adapter->priv;
 struct ieee80211_hdr *wlh = (struct ieee80211_hdr *)skb->data;

 if (ieee80211_is_auth(wlh->frame_control))
  common->mac_ops_resumed = 0;

 rsi_core_xmit(common, skb);
}
