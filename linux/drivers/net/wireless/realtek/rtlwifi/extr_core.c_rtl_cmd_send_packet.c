
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtl_tx_desc {int dummy; } ;
struct TYPE_4__ {int irq_th_lock; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ locks; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {int queue; struct rtl_tx_desc* desc; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* tx_polling ) (struct ieee80211_hw*,size_t) ;int (* fill_tx_cmddesc ) (struct ieee80211_hw*,int *,int,int,struct sk_buff*) ;} ;


 size_t BEACON_QUEUE ;
 struct sk_buff* __skb_dequeue (int *) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ieee80211_hw*,int *,int,int,struct sk_buff*) ;
 int stub2 (struct ieee80211_hw*,size_t) ;

bool rtl_cmd_send_packet(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl8192_tx_ring *ring;
 struct rtl_tx_desc *pdesc;
 unsigned long flags;
 struct sk_buff *pskb = ((void*)0);

 ring = &rtlpci->tx_ring[BEACON_QUEUE];

 spin_lock_irqsave(&rtlpriv->locks.irq_th_lock, flags);
 pskb = __skb_dequeue(&ring->queue);
 if (pskb)
  dev_kfree_skb_irq(pskb);


 pdesc = &ring->desc[0];

 rtlpriv->cfg->ops->fill_tx_cmddesc(hw, (u8 *)pdesc, 1, 1, skb);

 __skb_queue_tail(&ring->queue, skb);

 spin_unlock_irqrestore(&rtlpriv->locks.irq_th_lock, flags);

 rtlpriv->cfg->ops->tx_polling(hw, BEACON_QUEUE);

 return 1;
}
