#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int len; TYPE_2__* dev; int /*<<< orphan*/  data; } ;
struct qtnf_pearl_tx_bd {void* info; void* addr_h; void* addr; } ;
struct qtnf_pcie_bus_priv {int tx_stopped; int tx_bd_w_index; int tx_bd_num; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_done_count; int /*<<< orphan*/  pdev; struct sk_buff** tx_skb; } ;
struct qtnf_pcie_pearl_state {int /*<<< orphan*/  pcie_reg_base; scalar_t__ tx_bd_pbase; struct qtnf_pearl_tx_bd* tx_bd_vbase; struct qtnf_pcie_bus_priv base; } ;
struct qtnf_bus {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int ENOMEM ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int QTN_PCIE_TX_DESC_LEN_MASK ; 
 int QTN_PCIE_TX_DESC_LEN_SHIFT ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct qtnf_pcie_pearl_state* FUNC7 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct qtnf_pcie_pearl_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct qtnf_pcie_pearl_state*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct qtnf_bus *bus, struct sk_buff *skb)
{
	struct qtnf_pcie_pearl_state *ps = FUNC7(bus);
	struct qtnf_pcie_bus_priv *priv = &ps->base;
	dma_addr_t txbd_paddr, skb_paddr;
	struct qtnf_pearl_tx_bd *txbd;
	unsigned long flags;
	int len, i;
	u32 info;
	int ret = 0;

	FUNC15(&priv->tx_lock, flags);

	if (!FUNC14(ps)) {
		if (skb->dev) {
			FUNC8(skb->dev);
			priv->tx_stopped = 1;
		}

		FUNC16(&priv->tx_lock, flags);
		return NETDEV_TX_BUSY;
	}

	i = priv->tx_bd_w_index;
	priv->tx_skb[i] = skb;
	len = skb->len;

	skb_paddr = FUNC10(priv->pdev, skb->data,
				   skb->len, PCI_DMA_TODEVICE);
	if (FUNC9(priv->pdev, skb_paddr)) {
		FUNC11("skb DMA mapping error: %pad\n", &skb_paddr);
		ret = -ENOMEM;
		goto tx_done;
	}

	txbd = &ps->tx_bd_vbase[i];
	txbd->addr = FUNC4(FUNC3(skb_paddr));
	txbd->addr_h = FUNC4(FUNC2(skb_paddr));

	info = (len & QTN_PCIE_TX_DESC_LEN_MASK) << QTN_PCIE_TX_DESC_LEN_SHIFT;
	txbd->info = FUNC4(info);

	/* sync up all descriptor updates before passing them to EP */
	FUNC6();

	/* write new TX descriptor to PCIE_RX_FIFO on EP */
	txbd_paddr = ps->tx_bd_pbase + i * sizeof(struct qtnf_pearl_tx_bd);

#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
	writel(QTN_HOST_HI32(txbd_paddr),
	       PCIE_HDP_HOST_WR_DESC0_H(ps->pcie_reg_base));
#endif
	FUNC17(FUNC3(txbd_paddr),
	       FUNC0(ps->pcie_reg_base));

	if (++i >= priv->tx_bd_num)
		i = 0;

	priv->tx_bd_w_index = i;

tx_done:
	if (ret && skb) {
		FUNC12("drop skb\n");
		if (skb->dev)
			skb->dev->stats.tx_dropped++;
		FUNC5(skb);
	}

	priv->tx_done_count++;
	FUNC16(&priv->tx_lock, flags);

	FUNC13(ps);

	return NETDEV_TX_OK;
}