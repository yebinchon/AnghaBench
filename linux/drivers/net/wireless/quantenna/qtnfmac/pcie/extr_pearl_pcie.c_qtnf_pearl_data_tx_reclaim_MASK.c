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
struct sk_buff {scalar_t__ dev; int /*<<< orphan*/  len; } ;
struct qtnf_pearl_tx_bd {int /*<<< orphan*/  addr; int /*<<< orphan*/  addr_h; } ;
struct qtnf_pcie_bus_priv {int tx_bd_num; int tx_bd_r_index; int tx_reclaim_done; int /*<<< orphan*/  tx_reclaim_lock; int /*<<< orphan*/  tx_reclaim_req; struct sk_buff** tx_skb; scalar_t__ tx_stopped; int /*<<< orphan*/  pdev; } ;
struct qtnf_pcie_pearl_state {struct qtnf_pearl_tx_bd* tx_bd_vbase; int /*<<< orphan*/  pcie_reg_base; struct qtnf_pcie_bus_priv base; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct qtnf_pcie_pearl_state *ps)
{
	struct qtnf_pcie_bus_priv *priv = &ps->base;
	struct qtnf_pearl_tx_bd *txbd;
	struct sk_buff *skb;
	unsigned long flags;
	dma_addr_t paddr;
	u32 tx_done_index;
	int count = 0;
	int i;

	FUNC10(&priv->tx_reclaim_lock, flags);

	tx_done_index = FUNC9(FUNC1(ps->pcie_reg_base))
			& (priv->tx_bd_num - 1);

	i = priv->tx_bd_r_index;

	while (FUNC0(tx_done_index, i, priv->tx_bd_num)) {
		skb = priv->tx_skb[i];
		if (FUNC5(skb)) {
			txbd = &ps->tx_bd_vbase[i];
			paddr = FUNC2(FUNC4(txbd->addr_h),
					      FUNC4(txbd->addr));
			FUNC6(priv->pdev, paddr, skb->len,
					 PCI_DMA_TODEVICE);

			if (skb->dev) {
				FUNC7(skb->dev, skb);
				if (FUNC12(priv->tx_stopped)) {
					FUNC8(skb->dev);
					priv->tx_stopped = 0;
				}
			}

			FUNC3(skb);
		}

		priv->tx_skb[i] = NULL;
		count++;

		if (++i >= priv->tx_bd_num)
			i = 0;
	}

	priv->tx_reclaim_done += count;
	priv->tx_reclaim_req++;
	priv->tx_bd_r_index = i;

	FUNC11(&priv->tx_reclaim_lock, flags);
}