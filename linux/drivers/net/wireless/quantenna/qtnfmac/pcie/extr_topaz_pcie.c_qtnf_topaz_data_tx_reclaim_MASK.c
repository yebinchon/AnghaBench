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
struct qtnf_topaz_tx_bd {int /*<<< orphan*/  addr; } ;
struct qtnf_pcie_bus_priv {int tx_bd_r_index; int tx_bd_w_index; int tx_bd_num; int tx_reclaim_done; int /*<<< orphan*/  tx_reclaim_lock; int /*<<< orphan*/  tx_reclaim_req; struct sk_buff** tx_skb; scalar_t__ tx_stopped; int /*<<< orphan*/  pdev; int /*<<< orphan*/  sysctl_bar; } ;
struct qtnf_pcie_topaz_state {struct qtnf_topaz_tx_bd* tx_bd_vbase; int /*<<< orphan*/  ep_next_rx_pkt; struct qtnf_pcie_bus_priv base; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOPAZ_RC_TX_DONE_IRQ ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct qtnf_pcie_topaz_state *ts)
{
	struct qtnf_pcie_bus_priv *priv = &ts->base;
	struct qtnf_topaz_tx_bd *txbd;
	struct sk_buff *skb;
	unsigned long flags;
	dma_addr_t paddr;
	u32 tx_done_index;
	int count = 0;
	int i;

	FUNC11(&priv->tx_reclaim_lock, flags);

	tx_done_index = FUNC10(ts->ep_next_rx_pkt);
	i = priv->tx_bd_r_index;

	if (FUNC0(priv->tx_bd_w_index, tx_done_index, priv->tx_bd_num))
		FUNC14(FUNC2(TOPAZ_RC_TX_DONE_IRQ),
		       FUNC3(priv->sysctl_bar));

	while (FUNC0(tx_done_index, i, priv->tx_bd_num)) {
		skb = priv->tx_skb[i];

		if (FUNC6(skb)) {
			txbd = &ts->tx_bd_vbase[i];
			paddr = FUNC1(0x0, FUNC5(txbd->addr));
			FUNC7(priv->pdev, paddr, skb->len,
					 PCI_DMA_TODEVICE);

			if (skb->dev) {
				FUNC8(skb->dev, skb);
				if (FUNC13(priv->tx_stopped)) {
					FUNC9(skb->dev);
					priv->tx_stopped = 0;
				}
			}

			FUNC4(skb);
		}

		priv->tx_skb[i] = NULL;
		count++;

		if (++i >= priv->tx_bd_num)
			i = 0;
	}

	priv->tx_reclaim_done += count;
	priv->tx_reclaim_req++;
	priv->tx_bd_r_index = i;

	FUNC12(&priv->tx_reclaim_lock, flags);
}