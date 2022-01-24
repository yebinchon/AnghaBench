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
typedef  int u32 ;
struct qtnf_pearl_tx_bd {int dummy; } ;
struct qtnf_pcie_bus_priv {unsigned int tx_bd_num; unsigned int rx_bd_num; scalar_t__ rx_bd_r_index; scalar_t__ rx_bd_w_index; } ;
struct qtnf_pcie_pearl_state {struct qtnf_pcie_bus_priv base; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int PCIE_HHBM_MAX_SIZE ; 
 void* PEARL_TX_BD_SIZE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (struct qtnf_pcie_pearl_state*) ; 
 int FUNC2 (struct qtnf_pcie_pearl_state*) ; 
 int FUNC3 (struct qtnf_pcie_pearl_state*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int FUNC6 (struct qtnf_pcie_bus_priv*) ; 

__attribute__((used)) static int FUNC7(struct qtnf_pcie_pearl_state *ps,
				     unsigned int tx_bd_size)
{
	struct qtnf_pcie_bus_priv *priv = &ps->base;
	int ret;
	u32 val;

	if (tx_bd_size == 0)
		tx_bd_size = PEARL_TX_BD_SIZE_DEFAULT;

	val = tx_bd_size * sizeof(struct qtnf_pearl_tx_bd);

	if (!FUNC0(tx_bd_size) || val > PCIE_HHBM_MAX_SIZE) {
		FUNC5("bad tx_bd_size value %u\n", tx_bd_size);
		priv->tx_bd_num = PEARL_TX_BD_SIZE_DEFAULT;
	} else {
		priv->tx_bd_num = tx_bd_size;
	}

	priv->rx_bd_w_index = 0;
	priv->rx_bd_r_index = 0;

	if (!priv->rx_bd_num || !FUNC0(priv->rx_bd_num)) {
		FUNC4("rx_bd_size_param %u is not power of two\n",
		       priv->rx_bd_num);
		return -EINVAL;
	}

	val = priv->rx_bd_num * sizeof(dma_addr_t);
	if (val > PCIE_HHBM_MAX_SIZE) {
		FUNC4("rx_bd_size_param %u is too large\n",
		       priv->rx_bd_num);
		return -EINVAL;
	}

	ret = FUNC3(ps);
	if (ret) {
		FUNC4("failed to init h/w queues\n");
		return ret;
	}

	ret = FUNC6(priv);
	if (ret) {
		FUNC4("failed to allocate skb array\n");
		return ret;
	}

	ret = FUNC1(ps);
	if (ret) {
		FUNC4("failed to allocate bd table\n");
		return ret;
	}

	ret = FUNC2(ps);
	if (ret) {
		FUNC4("failed to allocate rx buffers\n");
		return ret;
	}

	return ret;
}