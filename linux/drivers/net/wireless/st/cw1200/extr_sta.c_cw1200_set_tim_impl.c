
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wsm_update_ie {int count; int* ies; int length; int what; } ;
struct sk_buff {int* data; } ;
struct cw1200_common {int vif; int hw; } ;


 int ENOENT ;
 int WSM_UPDATE_IE_BEACON ;
 int __cw1200_flush (struct cw1200_common*,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* ieee80211_beacon_get_tim (int ,int ,int*,int*) ;
 int pr_debug (char*,char*) ;
 int wsm_unlock_tx (struct cw1200_common*) ;
 int wsm_update_ie (struct cw1200_common*,struct wsm_update_ie*) ;

__attribute__((used)) static int cw1200_set_tim_impl(struct cw1200_common *priv, bool aid0_bit_set)
{
 struct sk_buff *skb;
 struct wsm_update_ie update_ie = {
  .what = WSM_UPDATE_IE_BEACON,
  .count = 1,
 };
 u16 tim_offset, tim_length;

 pr_debug("[AP] mcast: %s.\n", aid0_bit_set ? "ena" : "dis");

 skb = ieee80211_beacon_get_tim(priv->hw, priv->vif,
   &tim_offset, &tim_length);
 if (!skb) {
  if (!__cw1200_flush(priv, 1))
   wsm_unlock_tx(priv);
  return -ENOENT;
 }

 if (tim_offset && tim_length >= 6) {



  skb->data[tim_offset + 2] = 0;


  if (aid0_bit_set)
   skb->data[tim_offset + 4] |= 1;
  else
   skb->data[tim_offset + 4] &= ~1;
 }

 update_ie.ies = &skb->data[tim_offset];
 update_ie.length = tim_length;
 wsm_update_ie(priv, &update_ie);

 dev_kfree_skb(skb);

 return 0;
}
