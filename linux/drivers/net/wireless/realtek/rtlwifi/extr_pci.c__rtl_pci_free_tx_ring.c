
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; } ;
struct rtl_priv {scalar_t__ use_new_trx_flow; TYPE_2__* cfg; } ;
struct rtl_pci {int pdev; struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {size_t idx; int entries; int * buffer_desc; int buffer_desc_dma; int * desc; int dma; int queue; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_desc ) (struct ieee80211_hw*,int *,int,int ) ;} ;


 int HW_DESC_TXBUFF_ADDR ;
 int PCI_DMA_TODEVICE ;
 struct sk_buff* __skb_dequeue (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ skb_queue_len (int *) ;
 int stub1 (struct ieee80211_hw*,int *,int,int ) ;

__attribute__((used)) static void _rtl_pci_free_tx_ring(struct ieee80211_hw *hw,
      unsigned int prio)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl8192_tx_ring *ring = &rtlpci->tx_ring[prio];


 while (skb_queue_len(&ring->queue)) {
  u8 *entry;
  struct sk_buff *skb = __skb_dequeue(&ring->queue);

  if (rtlpriv->use_new_trx_flow)
   entry = (u8 *)(&ring->buffer_desc[ring->idx]);
  else
   entry = (u8 *)(&ring->desc[ring->idx]);

  pci_unmap_single(rtlpci->pdev,
     rtlpriv->cfg->ops->get_desc(hw, (u8 *)entry,
         1,
         HW_DESC_TXBUFF_ADDR),
     skb->len, PCI_DMA_TODEVICE);
  kfree_skb(skb);
  ring->idx = (ring->idx + 1) % ring->entries;
 }


 pci_free_consistent(rtlpci->pdev,
       sizeof(*ring->desc) * ring->entries,
       ring->desc, ring->dma);
 ring->desc = ((void*)0);
 if (rtlpriv->use_new_trx_flow) {
  pci_free_consistent(rtlpci->pdev,
        sizeof(*ring->buffer_desc) * ring->entries,
        ring->buffer_desc, ring->buffer_desc_dma);
  ring->buffer_desc = ((void*)0);
 }
}
