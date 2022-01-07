
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rt2x00_dev {int hw; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_tx_control {int dummy; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 struct sk_buff* ieee80211_get_buffered_bc (int ,struct ieee80211_vif*) ;
 int rt2x00mac_tx (int ,struct ieee80211_tx_control*,struct sk_buff*) ;

__attribute__((used)) static void rt2x00lib_bc_buffer_iter(void *data, u8 *mac,
         struct ieee80211_vif *vif)
{
 struct ieee80211_tx_control control = {};
 struct rt2x00_dev *rt2x00dev = data;
 struct sk_buff *skb;




 if (vif->type != NL80211_IFTYPE_AP)
  return;




 skb = ieee80211_get_buffered_bc(rt2x00dev->hw, vif);
 while (skb) {
  rt2x00mac_tx(rt2x00dev->hw, &control, skb);
  skb = ieee80211_get_buffered_bc(rt2x00dev->hw, vif);
 }
}
