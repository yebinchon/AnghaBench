
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct sk_buff {int data; } ;
struct qtnf_pearl_rx_bd {int info; void* addr_h; void* addr; } ;
struct qtnf_pcie_bus_priv {size_t rx_bd_w_index; int pdev; struct sk_buff** rx_skb; } ;
struct qtnf_pcie_pearl_state {int pcie_reg_base; struct qtnf_pearl_rx_bd* rx_bd_vbase; struct qtnf_pcie_bus_priv base; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int PCIE_HDP_HHBM_BUF_PTR (int ) ;
 int PCIE_HDP_HHBM_BUF_PTR_H (int ) ;
 int PCIE_HDP_TX_HOST_Q_WR_PTR (int ) ;
 int PCI_DMA_FROMDEVICE ;
 size_t QTN_HOST_HI32 (int ) ;
 size_t QTN_HOST_LO32 (int ) ;
 int SKB_BUF_SIZE ;
 struct sk_buff* __netdev_alloc_skb_ip_align (int *,int ,int ) ;
 void* cpu_to_le32 (size_t) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int pr_err (char*,int *) ;
 int wmb () ;
 int writel (size_t,int ) ;

__attribute__((used)) static int pearl_skb2rbd_attach(struct qtnf_pcie_pearl_state *ps, u16 index)
{
 struct qtnf_pcie_bus_priv *priv = &ps->base;
 struct qtnf_pearl_rx_bd *rxbd;
 struct sk_buff *skb;
 dma_addr_t paddr;

 skb = __netdev_alloc_skb_ip_align(((void*)0), SKB_BUF_SIZE, GFP_ATOMIC);
 if (!skb) {
  priv->rx_skb[index] = ((void*)0);
  return -ENOMEM;
 }

 priv->rx_skb[index] = skb;
 rxbd = &ps->rx_bd_vbase[index];

 paddr = pci_map_single(priv->pdev, skb->data,
          SKB_BUF_SIZE, PCI_DMA_FROMDEVICE);
 if (pci_dma_mapping_error(priv->pdev, paddr)) {
  pr_err("skb DMA mapping error: %pad\n", &paddr);
  return -ENOMEM;
 }


 rxbd->addr = cpu_to_le32(QTN_HOST_LO32(paddr));
 rxbd->addr_h = cpu_to_le32(QTN_HOST_HI32(paddr));
 rxbd->info = 0x0;

 priv->rx_bd_w_index = index;


 wmb();





 writel(QTN_HOST_LO32(paddr),
        PCIE_HDP_HHBM_BUF_PTR(ps->pcie_reg_base));

 writel(index, PCIE_HDP_TX_HOST_Q_WR_PTR(ps->pcie_reg_base));
 return 0;
}
