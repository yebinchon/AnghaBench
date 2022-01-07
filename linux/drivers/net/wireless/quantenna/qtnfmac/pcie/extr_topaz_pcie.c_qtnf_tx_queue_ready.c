
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_pcie_bus_priv {int tx_full_count; int tx_bd_num; int tx_bd_r_index; int tx_bd_w_index; } ;
struct qtnf_pcie_topaz_state {struct qtnf_pcie_bus_priv base; } ;


 int CIRC_SPACE (int ,int ,int ) ;
 int qtnf_topaz_data_tx_reclaim (struct qtnf_pcie_topaz_state*) ;

__attribute__((used)) static int qtnf_tx_queue_ready(struct qtnf_pcie_topaz_state *ts)
{
 struct qtnf_pcie_bus_priv *priv = &ts->base;

 if (!CIRC_SPACE(priv->tx_bd_w_index, priv->tx_bd_r_index,
   priv->tx_bd_num)) {
  qtnf_topaz_data_tx_reclaim(ts);

  if (!CIRC_SPACE(priv->tx_bd_w_index, priv->tx_bd_r_index,
    priv->tx_bd_num)) {
   priv->tx_full_count++;
   return 0;
  }
 }

 return 1;
}
