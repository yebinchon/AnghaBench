
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct qtnf_pcie_bus_priv {int tx_full_count; int tx_done_count; int tx_reclaim_done; int tx_reclaim_req; int tx_bd_r_index; int tx_bd_num; int tx_bd_w_index; int rx_bd_r_index; int rx_bd_num; int rx_bd_w_index; } ;
struct qtnf_pcie_pearl_state {int pcie_reg_base; struct qtnf_pcie_bus_priv base; } ;
struct qtnf_bus {int dummy; } ;


 int CIRC_CNT (int,int,int) ;
 int CIRC_SPACE (int,int,int) ;
 int PCIE_HDP_RX0DMA_CNT (int ) ;
 int PCIE_HDP_TX0DMA_CNT (int ) ;
 struct qtnf_bus* dev_get_drvdata (int ) ;
 struct qtnf_pcie_pearl_state* get_bus_priv (struct qtnf_bus*) ;
 int readl (int ) ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int qtnf_dbg_hdp_stats(struct seq_file *s, void *data)
{
 struct qtnf_bus *bus = dev_get_drvdata(s->private);
 struct qtnf_pcie_pearl_state *ps = get_bus_priv(bus);
 struct qtnf_pcie_bus_priv *priv = &ps->base;

 seq_printf(s, "tx_full_count(%u)\n", priv->tx_full_count);
 seq_printf(s, "tx_done_count(%u)\n", priv->tx_done_count);
 seq_printf(s, "tx_reclaim_done(%u)\n", priv->tx_reclaim_done);
 seq_printf(s, "tx_reclaim_req(%u)\n", priv->tx_reclaim_req);

 seq_printf(s, "tx_bd_r_index(%u)\n", priv->tx_bd_r_index);
 seq_printf(s, "tx_bd_p_index(%u)\n",
     readl(PCIE_HDP_RX0DMA_CNT(ps->pcie_reg_base))
   & (priv->tx_bd_num - 1));
 seq_printf(s, "tx_bd_w_index(%u)\n", priv->tx_bd_w_index);
 seq_printf(s, "tx queue len(%u)\n",
     CIRC_CNT(priv->tx_bd_w_index, priv->tx_bd_r_index,
       priv->tx_bd_num));

 seq_printf(s, "rx_bd_r_index(%u)\n", priv->rx_bd_r_index);
 seq_printf(s, "rx_bd_p_index(%u)\n",
     readl(PCIE_HDP_TX0DMA_CNT(ps->pcie_reg_base))
   & (priv->rx_bd_num - 1));
 seq_printf(s, "rx_bd_w_index(%u)\n", priv->rx_bd_w_index);
 seq_printf(s, "rx alloc queue len(%u)\n",
     CIRC_SPACE(priv->rx_bd_w_index, priv->rx_bd_r_index,
         priv->rx_bd_num));

 return 0;
}
