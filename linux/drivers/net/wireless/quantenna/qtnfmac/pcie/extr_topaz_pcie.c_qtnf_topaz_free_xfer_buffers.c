
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct qtnf_topaz_tx_bd {scalar_t__ info; scalar_t__ addr; } ;
struct qtnf_topaz_rx_bd {scalar_t__ info; scalar_t__ addr; } ;
struct qtnf_pcie_bus_priv {int rx_bd_num; int tx_bd_num; struct sk_buff** tx_skb; int pdev; struct sk_buff** rx_skb; } ;
struct qtnf_pcie_topaz_state {struct qtnf_topaz_tx_bd* tx_bd_vbase; struct qtnf_topaz_rx_bd* rx_bd_vbase; struct qtnf_pcie_bus_priv base; } ;
typedef int dma_addr_t ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int QTN_HOST_ADDR (int,int ) ;
 int SKB_BUF_SIZE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int le32_to_cpu (scalar_t__) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void qtnf_topaz_free_xfer_buffers(struct qtnf_pcie_topaz_state *ts)
{
 struct qtnf_pcie_bus_priv *priv = &ts->base;
 struct qtnf_topaz_rx_bd *rxbd;
 struct qtnf_topaz_tx_bd *txbd;
 struct sk_buff *skb;
 dma_addr_t paddr;
 int i;


 for (i = 0; i < priv->rx_bd_num; i++) {
  if (priv->rx_skb && priv->rx_skb[i]) {
   rxbd = &ts->rx_bd_vbase[i];
   skb = priv->rx_skb[i];
   paddr = QTN_HOST_ADDR(0x0, le32_to_cpu(rxbd->addr));
   pci_unmap_single(priv->pdev, paddr, SKB_BUF_SIZE,
      PCI_DMA_FROMDEVICE);
   dev_kfree_skb_any(skb);
   priv->rx_skb[i] = ((void*)0);
   rxbd->addr = 0;
   rxbd->info = 0;
  }
 }


 for (i = 0; i < priv->tx_bd_num; i++) {
  if (priv->tx_skb && priv->tx_skb[i]) {
   txbd = &ts->tx_bd_vbase[i];
   skb = priv->tx_skb[i];
   paddr = QTN_HOST_ADDR(0x0, le32_to_cpu(txbd->addr));
   pci_unmap_single(priv->pdev, paddr, SKB_BUF_SIZE,
      PCI_DMA_TODEVICE);
   dev_kfree_skb_any(skb);
   priv->tx_skb[i] = ((void*)0);
   txbd->addr = 0;
   txbd->info = 0;
  }
 }
}
