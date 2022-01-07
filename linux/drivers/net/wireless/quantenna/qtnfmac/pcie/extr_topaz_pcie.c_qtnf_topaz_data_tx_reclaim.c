
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ dev; int len; } ;
struct qtnf_topaz_tx_bd {int addr; } ;
struct qtnf_pcie_bus_priv {int tx_bd_r_index; int tx_bd_w_index; int tx_bd_num; int tx_reclaim_done; int tx_reclaim_lock; int tx_reclaim_req; struct sk_buff** tx_skb; scalar_t__ tx_stopped; int pdev; int sysctl_bar; } ;
struct qtnf_pcie_topaz_state {struct qtnf_topaz_tx_bd* tx_bd_vbase; int ep_next_rx_pkt; struct qtnf_pcie_bus_priv base; } ;
typedef int dma_addr_t ;


 scalar_t__ CIRC_CNT (int,int,int) ;
 int PCI_DMA_TODEVICE ;
 int QTN_HOST_ADDR (int,int ) ;
 int TOPAZ_IPC_IRQ_WORD (int ) ;
 int TOPAZ_LH_IPC4_INT (int ) ;
 int TOPAZ_RC_TX_DONE_IRQ ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (struct sk_buff*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int qtnf_update_tx_stats (scalar_t__,struct sk_buff*) ;
 int qtnf_wake_all_queues (scalar_t__) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (scalar_t__) ;
 int writel (int ,int ) ;

__attribute__((used)) static void qtnf_topaz_data_tx_reclaim(struct qtnf_pcie_topaz_state *ts)
{
 struct qtnf_pcie_bus_priv *priv = &ts->base;
 struct qtnf_topaz_tx_bd *txbd;
 struct sk_buff *skb;
 unsigned long flags;
 dma_addr_t paddr;
 u32 tx_done_index;
 int count = 0;
 int i;

 spin_lock_irqsave(&priv->tx_reclaim_lock, flags);

 tx_done_index = readl(ts->ep_next_rx_pkt);
 i = priv->tx_bd_r_index;

 if (CIRC_CNT(priv->tx_bd_w_index, tx_done_index, priv->tx_bd_num))
  writel(TOPAZ_IPC_IRQ_WORD(TOPAZ_RC_TX_DONE_IRQ),
         TOPAZ_LH_IPC4_INT(priv->sysctl_bar));

 while (CIRC_CNT(tx_done_index, i, priv->tx_bd_num)) {
  skb = priv->tx_skb[i];

  if (likely(skb)) {
   txbd = &ts->tx_bd_vbase[i];
   paddr = QTN_HOST_ADDR(0x0, le32_to_cpu(txbd->addr));
   pci_unmap_single(priv->pdev, paddr, skb->len,
      PCI_DMA_TODEVICE);

   if (skb->dev) {
    qtnf_update_tx_stats(skb->dev, skb);
    if (unlikely(priv->tx_stopped)) {
     qtnf_wake_all_queues(skb->dev);
     priv->tx_stopped = 0;
    }
   }

   dev_kfree_skb_any(skb);
  }

  priv->tx_skb[i] = ((void*)0);
  count++;

  if (++i >= priv->tx_bd_num)
   i = 0;
 }

 priv->tx_reclaim_done += count;
 priv->tx_reclaim_req++;
 priv->tx_bd_r_index = i;

 spin_unlock_irqrestore(&priv->tx_reclaim_lock, flags);
}
