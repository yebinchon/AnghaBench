
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl_priv {TYPE_3__* cfg; scalar_t__ use_new_trx_flow; } ;
struct rtl_pci {int rxbuffersize; TYPE_1__* rx_ring; int pdev; } ;
struct ieee80211_hw {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* set_desc ) (struct ieee80211_hw*,int*,int,int ,int*) ;} ;
struct TYPE_4__ {struct sk_buff** rx_buf; } ;


 int HW_DESC_RXBUFF_ADDR ;
 int HW_DESC_RXOWN ;
 int HW_DESC_RXPKT_LEN ;
 int HW_DESC_RX_PREPARE ;
 int PCI_DMA_FROMDEVICE ;
 struct sk_buff* dev_alloc_skb (int ) ;
 scalar_t__ likely (struct sk_buff*) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,int ,int ) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int stub1 (struct ieee80211_hw*,int*,int,int ,int*) ;
 int stub2 (struct ieee80211_hw*,int*,int,int ,int*) ;
 int stub3 (struct ieee80211_hw*,int*,int,int ,int*) ;
 int stub4 (struct ieee80211_hw*,int*,int,int ,int*) ;

__attribute__((used)) static int _rtl_pci_init_one_rxdesc(struct ieee80211_hw *hw,
        struct sk_buff *new_skb, u8 *entry,
        int rxring_idx, int desc_idx)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 u32 bufferaddress;
 u8 tmp_one = 1;
 struct sk_buff *skb;

 if (likely(new_skb)) {
  skb = new_skb;
  goto remap;
 }
 skb = dev_alloc_skb(rtlpci->rxbuffersize);
 if (!skb)
  return 0;

remap:

 *((dma_addr_t *)skb->cb) =
  pci_map_single(rtlpci->pdev, skb_tail_pointer(skb),
          rtlpci->rxbuffersize, PCI_DMA_FROMDEVICE);
 bufferaddress = *((dma_addr_t *)skb->cb);
 if (pci_dma_mapping_error(rtlpci->pdev, bufferaddress))
  return 0;
 rtlpci->rx_ring[rxring_idx].rx_buf[desc_idx] = skb;
 if (rtlpriv->use_new_trx_flow) {

  rtlpriv->cfg->ops->set_desc(hw, (u8 *)entry, 0,
         HW_DESC_RX_PREPARE,
         (u8 *)(dma_addr_t *)skb->cb);
 } else {
  rtlpriv->cfg->ops->set_desc(hw, (u8 *)entry, 0,
         HW_DESC_RXBUFF_ADDR,
         (u8 *)&bufferaddress);
  rtlpriv->cfg->ops->set_desc(hw, (u8 *)entry, 0,
         HW_DESC_RXPKT_LEN,
         (u8 *)&rtlpci->rxbuffersize);
  rtlpriv->cfg->ops->set_desc(hw, (u8 *)entry, 0,
         HW_DESC_RXOWN,
         (u8 *)&tmp_one);
 }
 return 1;
}
