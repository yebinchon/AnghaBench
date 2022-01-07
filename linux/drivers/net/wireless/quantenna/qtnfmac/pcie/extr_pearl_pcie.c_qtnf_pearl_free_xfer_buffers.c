
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct qtnf_pearl_tx_bd {int addr; int addr_h; } ;
struct qtnf_pearl_rx_bd {int addr; int addr_h; } ;
struct qtnf_pcie_bus_priv {int rx_bd_num; int tx_bd_num; struct sk_buff** tx_skb; int pdev; struct sk_buff** rx_skb; } ;
struct qtnf_pcie_pearl_state {struct qtnf_pearl_tx_bd* tx_bd_vbase; struct qtnf_pearl_rx_bd* rx_bd_vbase; struct qtnf_pcie_bus_priv base; } ;
typedef int dma_addr_t ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int QTN_HOST_ADDR (int ,int ) ;
 int SKB_BUF_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void qtnf_pearl_free_xfer_buffers(struct qtnf_pcie_pearl_state *ps)
{
 struct qtnf_pcie_bus_priv *priv = &ps->base;
 struct qtnf_pearl_tx_bd *txbd;
 struct qtnf_pearl_rx_bd *rxbd;
 struct sk_buff *skb;
 dma_addr_t paddr;
 int i;


 for (i = 0; i < priv->rx_bd_num; i++) {
  if (priv->rx_skb && priv->rx_skb[i]) {
   rxbd = &ps->rx_bd_vbase[i];
   skb = priv->rx_skb[i];
   paddr = QTN_HOST_ADDR(le32_to_cpu(rxbd->addr_h),
           le32_to_cpu(rxbd->addr));
   pci_unmap_single(priv->pdev, paddr, SKB_BUF_SIZE,
      PCI_DMA_FROMDEVICE);
   dev_kfree_skb_any(skb);
   priv->rx_skb[i] = ((void*)0);
  }
 }


 for (i = 0; i < priv->tx_bd_num; i++) {
  if (priv->tx_skb && priv->tx_skb[i]) {
   txbd = &ps->tx_bd_vbase[i];
   skb = priv->tx_skb[i];
   paddr = QTN_HOST_ADDR(le32_to_cpu(txbd->addr_h),
           le32_to_cpu(txbd->addr));
   pci_unmap_single(priv->pdev, paddr, skb->len,
      PCI_DMA_TODEVICE);
   dev_kfree_skb_any(skb);
   priv->tx_skb[i] = ((void*)0);
  }
 }
}
