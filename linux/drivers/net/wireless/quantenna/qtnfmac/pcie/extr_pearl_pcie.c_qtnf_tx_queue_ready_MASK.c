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
struct qtnf_pcie_bus_priv {int /*<<< orphan*/  tx_full_count; int /*<<< orphan*/  tx_bd_num; int /*<<< orphan*/  tx_bd_r_index; int /*<<< orphan*/  tx_bd_w_index; } ;
struct qtnf_pcie_pearl_state {struct qtnf_pcie_bus_priv base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qtnf_pcie_pearl_state*) ; 

__attribute__((used)) static int FUNC3(struct qtnf_pcie_pearl_state *ps)
{
	struct qtnf_pcie_bus_priv *priv = &ps->base;

	if (!FUNC0(priv->tx_bd_w_index, priv->tx_bd_r_index,
			priv->tx_bd_num)) {
		FUNC2(ps);

		if (!FUNC0(priv->tx_bd_w_index, priv->tx_bd_r_index,
				priv->tx_bd_num)) {
			FUNC1("reclaim full Tx queue\n");
			priv->tx_full_count++;
			return 0;
		}
	}

	return 1;
}