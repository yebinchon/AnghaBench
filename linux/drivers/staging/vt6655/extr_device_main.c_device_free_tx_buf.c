
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_tx_desc {struct vnt_td_info* td_info; } ;
struct vnt_td_info {scalar_t__ flags; struct sk_buff* skb; } ;
struct vnt_private {int hw; } ;
struct sk_buff {int dummy; } ;


 int ieee80211_tx_status_irqsafe (int ,struct sk_buff*) ;

__attribute__((used)) static void device_free_tx_buf(struct vnt_private *priv,
          struct vnt_tx_desc *desc)
{
 struct vnt_td_info *td_info = desc->td_info;
 struct sk_buff *skb = td_info->skb;

 if (skb)
  ieee80211_tx_status_irqsafe(priv->hw, skb);

 td_info->skb = ((void*)0);
 td_info->flags = 0;
}
