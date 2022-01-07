
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_bus_priv {int tx_full_count; int tx_bd_num; int tx_bd_r_index; int tx_bd_w_index; } ;
struct qtnf_pcie_pearl_state {struct qtnf_pcie_bus_priv base; } ;


 int CIRC_SPACE (int ,int ,int ) ;
 int pr_warn_ratelimited (char*) ;
 int qtnf_pearl_data_tx_reclaim (struct qtnf_pcie_pearl_state*) ;

__attribute__((used)) static int qtnf_tx_queue_ready(struct qtnf_pcie_pearl_state *ps)
{
 struct qtnf_pcie_bus_priv *priv = &ps->base;

 if (!CIRC_SPACE(priv->tx_bd_w_index, priv->tx_bd_r_index,
   priv->tx_bd_num)) {
  qtnf_pearl_data_tx_reclaim(ps);

  if (!CIRC_SPACE(priv->tx_bd_w_index, priv->tx_bd_r_index,
    priv->tx_bd_num)) {
   pr_warn_ratelimited("reclaim full Tx queue\n");
   priv->tx_full_count++;
   return 0;
  }
 }

 return 1;
}
