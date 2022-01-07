
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_desc_cmd {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl8192_tx_ring {unsigned int idx; unsigned int entries; int queue; int * desc; } ;
struct r8192_priv {int irq_th_lock; TYPE_1__* ops; struct rtl8192_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;
struct cb_desc {int dummy; } ;
struct TYPE_2__ {int (* tx_fill_cmd_descriptor ) (struct net_device*,struct tx_desc_cmd*,struct cb_desc*,struct sk_buff*) ;} ;


 scalar_t__ MAX_DEV_ADDR_SIZE ;
 size_t TXCMD_QUEUE ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 unsigned int skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*,struct tx_desc_cmd*,struct cb_desc*,struct sk_buff*) ;

__attribute__((used)) static void _rtl92e_tx_cmd(struct net_device *dev, struct sk_buff *skb)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 struct rtl8192_tx_ring *ring;
 struct tx_desc_cmd *entry;
 unsigned int idx;
 struct cb_desc *tcb_desc;
 unsigned long flags;

 spin_lock_irqsave(&priv->irq_th_lock, flags);
 ring = &priv->tx_ring[TXCMD_QUEUE];

 idx = (ring->idx + skb_queue_len(&ring->queue)) % ring->entries;
 entry = (struct tx_desc_cmd *)&ring->desc[idx];

 tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);

 priv->ops->tx_fill_cmd_descriptor(dev, entry, tcb_desc, skb);

 __skb_queue_tail(&ring->queue, skb);
 spin_unlock_irqrestore(&priv->irq_th_lock, flags);
}
