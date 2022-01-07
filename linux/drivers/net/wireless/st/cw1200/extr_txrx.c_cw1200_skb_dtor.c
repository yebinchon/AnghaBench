
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cw1200_txpriv {scalar_t__ rate_id; int tid; int raw_link_id; int offset; } ;
struct cw1200_common {int hw; } ;


 scalar_t__ CW1200_INVALID_RATE_ID ;
 int cw1200_notify_buffered_tx (struct cw1200_common*,struct sk_buff*,int ,int ) ;
 int ieee80211_tx_status (int ,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int tx_policy_put (struct cw1200_common*,scalar_t__) ;

void cw1200_skb_dtor(struct cw1200_common *priv,
       struct sk_buff *skb,
       const struct cw1200_txpriv *txpriv)
{
 skb_pull(skb, txpriv->offset);
 if (txpriv->rate_id != CW1200_INVALID_RATE_ID) {
  cw1200_notify_buffered_tx(priv, skb,
       txpriv->raw_link_id, txpriv->tid);
  tx_policy_put(priv, txpriv->rate_id);
 }
 ieee80211_tx_status(priv->hw, skb);
}
