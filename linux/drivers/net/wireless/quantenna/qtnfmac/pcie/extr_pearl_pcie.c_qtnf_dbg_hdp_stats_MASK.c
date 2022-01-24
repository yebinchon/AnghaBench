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
struct seq_file {int /*<<< orphan*/  private; } ;
struct qtnf_pcie_bus_priv {int tx_full_count; int tx_done_count; int tx_reclaim_done; int tx_reclaim_req; int tx_bd_r_index; int tx_bd_num; int tx_bd_w_index; int rx_bd_r_index; int rx_bd_num; int rx_bd_w_index; } ;
struct qtnf_pcie_pearl_state {int /*<<< orphan*/  pcie_reg_base; struct qtnf_pcie_bus_priv base; } ;
struct qtnf_bus {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct qtnf_bus* FUNC4 (int /*<<< orphan*/ ) ; 
 struct qtnf_pcie_pearl_state* FUNC5 (struct qtnf_bus*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,int) ; 

__attribute__((used)) static int FUNC8(struct seq_file *s, void *data)
{
	struct qtnf_bus *bus = FUNC4(s->private);
	struct qtnf_pcie_pearl_state *ps = FUNC5(bus);
	struct qtnf_pcie_bus_priv *priv = &ps->base;

	FUNC7(s, "tx_full_count(%u)\n", priv->tx_full_count);
	FUNC7(s, "tx_done_count(%u)\n", priv->tx_done_count);
	FUNC7(s, "tx_reclaim_done(%u)\n", priv->tx_reclaim_done);
	FUNC7(s, "tx_reclaim_req(%u)\n", priv->tx_reclaim_req);

	FUNC7(s, "tx_bd_r_index(%u)\n", priv->tx_bd_r_index);
	FUNC7(s, "tx_bd_p_index(%u)\n",
		   FUNC6(FUNC2(ps->pcie_reg_base))
			& (priv->tx_bd_num - 1));
	FUNC7(s, "tx_bd_w_index(%u)\n", priv->tx_bd_w_index);
	FUNC7(s, "tx queue len(%u)\n",
		   FUNC0(priv->tx_bd_w_index, priv->tx_bd_r_index,
			    priv->tx_bd_num));

	FUNC7(s, "rx_bd_r_index(%u)\n", priv->rx_bd_r_index);
	FUNC7(s, "rx_bd_p_index(%u)\n",
		   FUNC6(FUNC3(ps->pcie_reg_base))
			& (priv->rx_bd_num - 1));
	FUNC7(s, "rx_bd_w_index(%u)\n", priv->rx_bd_w_index);
	FUNC7(s, "rx alloc queue len(%u)\n",
		   FUNC1(priv->rx_bd_w_index, priv->rx_bd_r_index,
			      priv->rx_bd_num));

	return 0;
}