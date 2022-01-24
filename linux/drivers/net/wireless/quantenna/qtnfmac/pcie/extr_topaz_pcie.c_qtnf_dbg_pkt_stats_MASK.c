#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {int /*<<< orphan*/  private; } ;
struct qtnf_pcie_bus_priv {int /*<<< orphan*/  rx_bd_num; int /*<<< orphan*/  rx_bd_r_index; int /*<<< orphan*/  rx_bd_w_index; int /*<<< orphan*/  tx_bd_num; int /*<<< orphan*/  tx_bd_w_index; int /*<<< orphan*/  tx_bd_r_index; int /*<<< orphan*/  tx_eapol; int /*<<< orphan*/  tx_reclaim_req; int /*<<< orphan*/  tx_reclaim_done; int /*<<< orphan*/  tx_done_count; int /*<<< orphan*/  tx_full_count; } ;
struct qtnf_pcie_topaz_state {int /*<<< orphan*/  ep_next_rx_pkt; struct qtnf_pcie_bus_priv base; } ;
struct qtnf_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qtnf_bus* FUNC2 (int /*<<< orphan*/ ) ; 
 struct qtnf_pcie_topaz_state* FUNC3 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *data)
{
	struct qtnf_bus *bus = FUNC2(s->private);
	struct qtnf_pcie_topaz_state *ts = FUNC3(bus);
	struct qtnf_pcie_bus_priv *priv = &ts->base;
	u32 tx_done_index = FUNC4(ts->ep_next_rx_pkt);

	FUNC5(s, "tx_full_count(%u)\n", priv->tx_full_count);
	FUNC5(s, "tx_done_count(%u)\n", priv->tx_done_count);
	FUNC5(s, "tx_reclaim_done(%u)\n", priv->tx_reclaim_done);
	FUNC5(s, "tx_reclaim_req(%u)\n", priv->tx_reclaim_req);
	FUNC5(s, "tx_eapol(%u)\n", priv->tx_eapol);

	FUNC5(s, "tx_bd_r_index(%u)\n", priv->tx_bd_r_index);
	FUNC5(s, "tx_done_index(%u)\n", tx_done_index);
	FUNC5(s, "tx_bd_w_index(%u)\n", priv->tx_bd_w_index);

	FUNC5(s, "tx host queue len(%u)\n",
		   FUNC0(priv->tx_bd_w_index, priv->tx_bd_r_index,
			    priv->tx_bd_num));
	FUNC5(s, "tx reclaim queue len(%u)\n",
		   FUNC0(tx_done_index, priv->tx_bd_r_index,
			    priv->tx_bd_num));
	FUNC5(s, "tx card queue len(%u)\n",
		   FUNC0(priv->tx_bd_w_index, tx_done_index,
			    priv->tx_bd_num));

	FUNC5(s, "rx_bd_r_index(%u)\n", priv->rx_bd_r_index);
	FUNC5(s, "rx_bd_w_index(%u)\n", priv->rx_bd_w_index);
	FUNC5(s, "rx alloc queue len(%u)\n",
		   FUNC1(priv->rx_bd_w_index, priv->rx_bd_r_index,
			      priv->rx_bd_num));

	return 0;
}