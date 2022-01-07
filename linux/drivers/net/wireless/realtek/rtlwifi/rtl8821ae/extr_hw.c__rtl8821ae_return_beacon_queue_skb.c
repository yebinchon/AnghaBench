
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; } ;
struct rtl_tx_desc {int dummy; } ;
struct TYPE_6__ {int irq_th_lock; } ;
struct rtl_priv {TYPE_3__ locks; TYPE_2__* cfg; } ;
struct rtl_pci {int pdev; struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {size_t idx; int entries; int queue; struct rtl_tx_desc* desc; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* get_desc ) (struct ieee80211_hw*,int *,int,int ) ;} ;


 size_t BEACON_QUEUE ;
 int HW_DESC_TXBUFF_ADDR ;
 int PCI_DMA_TODEVICE ;
 struct sk_buff* __skb_dequeue (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ieee80211_hw*,int *,int,int ) ;

__attribute__((used)) static void _rtl8821ae_return_beacon_queue_skb(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl8192_tx_ring *ring = &rtlpci->tx_ring[BEACON_QUEUE];
 unsigned long flags;

 spin_lock_irqsave(&rtlpriv->locks.irq_th_lock, flags);
 while (skb_queue_len(&ring->queue)) {
  struct rtl_tx_desc *entry = &ring->desc[ring->idx];
  struct sk_buff *skb = __skb_dequeue(&ring->queue);

  pci_unmap_single(rtlpci->pdev,
     rtlpriv->cfg->ops->get_desc(
     hw,
     (u8 *)entry, 1, HW_DESC_TXBUFF_ADDR),
     skb->len, PCI_DMA_TODEVICE);
  kfree_skb(skb);
  ring->idx = (ring->idx + 1) % ring->entries;
 }
 spin_unlock_irqrestore(&rtlpriv->locks.irq_th_lock, flags);
}
