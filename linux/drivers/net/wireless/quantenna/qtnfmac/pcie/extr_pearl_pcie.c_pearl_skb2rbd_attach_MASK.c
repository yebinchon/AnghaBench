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
typedef  size_t u16 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct qtnf_pearl_rx_bd {int info; void* addr_h; void* addr; } ;
struct qtnf_pcie_bus_priv {size_t rx_bd_w_index; int /*<<< orphan*/  pdev; struct sk_buff** rx_skb; } ;
struct qtnf_pcie_pearl_state {int /*<<< orphan*/  pcie_reg_base; struct qtnf_pearl_rx_bd* rx_bd_vbase; struct qtnf_pcie_bus_priv base; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKB_BUF_SIZE ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct qtnf_pcie_pearl_state *ps, u16 index)
{
	struct qtnf_pcie_bus_priv *priv = &ps->base;
	struct qtnf_pearl_rx_bd *rxbd;
	struct sk_buff *skb;
	dma_addr_t paddr;

	skb = FUNC5(NULL, SKB_BUF_SIZE, GFP_ATOMIC);
	if (!skb) {
		priv->rx_skb[index] = NULL;
		return -ENOMEM;
	}

	priv->rx_skb[index] = skb;
	rxbd = &ps->rx_bd_vbase[index];

	paddr = FUNC8(priv->pdev, skb->data,
			       SKB_BUF_SIZE, PCI_DMA_FROMDEVICE);
	if (FUNC7(priv->pdev, paddr)) {
		FUNC9("skb DMA mapping error: %pad\n", &paddr);
		return -ENOMEM;
	}

	/* keep rx skb paddrs in rx buffer descriptors for cleanup purposes */
	rxbd->addr = FUNC6(FUNC4(paddr));
	rxbd->addr_h = FUNC6(FUNC3(paddr));
	rxbd->info = 0x0;

	priv->rx_bd_w_index = index;

	/* sync up all descriptor updates */
	FUNC10();

#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
	writel(QTN_HOST_HI32(paddr),
	       PCIE_HDP_HHBM_BUF_PTR_H(ps->pcie_reg_base));
#endif
	FUNC11(FUNC4(paddr),
	       FUNC0(ps->pcie_reg_base));

	FUNC11(index, FUNC2(ps->pcie_reg_base));
	return 0;
}