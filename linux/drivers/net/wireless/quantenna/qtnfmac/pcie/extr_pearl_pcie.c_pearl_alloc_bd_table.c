
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qtnf_pearl_tx_bd {int dummy; } ;
struct qtnf_pearl_rx_bd {int dummy; } ;
struct qtnf_pcie_bus_priv {int tx_bd_num; int rx_bd_num; scalar_t__ tx_bd_w_index; scalar_t__ tx_bd_r_index; TYPE_1__* pdev; } ;
struct qtnf_pcie_pearl_state {int bd_table_paddr; int bd_table_len; int tx_bd_pbase; int rx_bd_pbase; int pcie_reg_base; void* rx_bd_vbase; void* tx_bd_vbase; void* bd_table_vaddr; struct qtnf_pcie_bus_priv base; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PCIE_HDP_TX_HOST_Q_BASE_H (int ) ;
 int PCIE_HDP_TX_HOST_Q_BASE_L (int ) ;
 int PCIE_HDP_TX_HOST_Q_SZ_CTRL (int ) ;
 int QTN_HOST_HI32 (int) ;
 int QTN_HOST_LO32 (int) ;
 void* dmam_alloc_coherent (int *,int,int*,int ) ;
 int memset (void*,int ,int) ;
 int pr_debug (char*,void*,int*) ;
 int writel (int,int ) ;

__attribute__((used)) static int pearl_alloc_bd_table(struct qtnf_pcie_pearl_state *ps)
{
 struct qtnf_pcie_bus_priv *priv = &ps->base;
 dma_addr_t paddr;
 void *vaddr;
 int len;

 len = priv->tx_bd_num * sizeof(struct qtnf_pearl_tx_bd) +
  priv->rx_bd_num * sizeof(struct qtnf_pearl_rx_bd);

 vaddr = dmam_alloc_coherent(&priv->pdev->dev, len, &paddr, GFP_KERNEL);
 if (!vaddr)
  return -ENOMEM;



 memset(vaddr, 0, len);

 ps->bd_table_vaddr = vaddr;
 ps->bd_table_paddr = paddr;
 ps->bd_table_len = len;

 ps->tx_bd_vbase = vaddr;
 ps->tx_bd_pbase = paddr;

 pr_debug("TX descriptor table: vaddr=0x%p paddr=%pad\n", vaddr, &paddr);

 priv->tx_bd_r_index = 0;
 priv->tx_bd_w_index = 0;



 vaddr = ((struct qtnf_pearl_tx_bd *)vaddr) + priv->tx_bd_num;
 paddr += priv->tx_bd_num * sizeof(struct qtnf_pearl_tx_bd);

 ps->rx_bd_vbase = vaddr;
 ps->rx_bd_pbase = paddr;





 writel(QTN_HOST_LO32(paddr),
        PCIE_HDP_TX_HOST_Q_BASE_L(ps->pcie_reg_base));
 writel(priv->rx_bd_num | (sizeof(struct qtnf_pearl_rx_bd)) << 16,
        PCIE_HDP_TX_HOST_Q_SZ_CTRL(ps->pcie_reg_base));

 pr_debug("RX descriptor table: vaddr=0x%p paddr=%pad\n", vaddr, &paddr);

 return 0;
}
