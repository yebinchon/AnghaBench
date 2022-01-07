
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int private; } ;
struct qtnf_pcie_bus_priv {int rx_bd_num; int rx_bd_r_index; int rx_bd_w_index; int tx_bd_num; int tx_bd_w_index; int tx_bd_r_index; int tx_eapol; int tx_reclaim_req; int tx_reclaim_done; int tx_done_count; int tx_full_count; } ;
struct qtnf_pcie_topaz_state {int ep_next_rx_pkt; struct qtnf_pcie_bus_priv base; } ;
struct qtnf_bus {int dummy; } ;


 int CIRC_CNT (int ,int ,int ) ;
 int CIRC_SPACE (int ,int ,int ) ;
 struct qtnf_bus* dev_get_drvdata (int ) ;
 struct qtnf_pcie_topaz_state* get_bus_priv (struct qtnf_bus*) ;
 int readl (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int qtnf_dbg_pkt_stats(struct seq_file *s, void *data)
{
 struct qtnf_bus *bus = dev_get_drvdata(s->private);
 struct qtnf_pcie_topaz_state *ts = get_bus_priv(bus);
 struct qtnf_pcie_bus_priv *priv = &ts->base;
 u32 tx_done_index = readl(ts->ep_next_rx_pkt);

 seq_printf(s, "tx_full_count(%u)\n", priv->tx_full_count);
 seq_printf(s, "tx_done_count(%u)\n", priv->tx_done_count);
 seq_printf(s, "tx_reclaim_done(%u)\n", priv->tx_reclaim_done);
 seq_printf(s, "tx_reclaim_req(%u)\n", priv->tx_reclaim_req);
 seq_printf(s, "tx_eapol(%u)\n", priv->tx_eapol);

 seq_printf(s, "tx_bd_r_index(%u)\n", priv->tx_bd_r_index);
 seq_printf(s, "tx_done_index(%u)\n", tx_done_index);
 seq_printf(s, "tx_bd_w_index(%u)\n", priv->tx_bd_w_index);

 seq_printf(s, "tx host queue len(%u)\n",
     CIRC_CNT(priv->tx_bd_w_index, priv->tx_bd_r_index,
       priv->tx_bd_num));
 seq_printf(s, "tx reclaim queue len(%u)\n",
     CIRC_CNT(tx_done_index, priv->tx_bd_r_index,
       priv->tx_bd_num));
 seq_printf(s, "tx card queue len(%u)\n",
     CIRC_CNT(priv->tx_bd_w_index, tx_done_index,
       priv->tx_bd_num));

 seq_printf(s, "rx_bd_r_index(%u)\n", priv->rx_bd_r_index);
 seq_printf(s, "rx_bd_w_index(%u)\n", priv->rx_bd_w_index);
 seq_printf(s, "rx alloc queue len(%u)\n",
     CIRC_SPACE(priv->rx_bd_w_index, priv->rx_bd_r_index,
         priv->rx_bd_num));

 return 0;
}
