
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 scalar_t__ vnt_tx_packet (struct vnt_private*,struct sk_buff*) ;

__attribute__((used)) static void vnt_tx_80211(struct ieee80211_hw *hw,
    struct ieee80211_tx_control *control,
    struct sk_buff *skb)
{
 struct vnt_private *priv = hw->priv;

 if (vnt_tx_packet(priv, skb))
  ieee80211_free_txskb(hw, skb);
}
