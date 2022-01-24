#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct qtnf_topaz_rx_bd {void* info; void* addr; } ;
struct TYPE_2__ {size_t rx_bd_w_index; int /*<<< orphan*/  pdev; struct sk_buff** rx_skb; } ;
struct qtnf_pcie_topaz_state {TYPE_1__ base; struct qtnf_topaz_rx_bd* rx_bd_vbase; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int QTN_BD_EMPTY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKB_BUF_SIZE ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct qtnf_pcie_topaz_state *ts, u16 index, u32 wrap)
{
	struct qtnf_topaz_rx_bd *rxbd = &ts->rx_bd_vbase[index];
	struct sk_buff *skb;
	dma_addr_t paddr;

	skb = FUNC1(NULL, SKB_BUF_SIZE, GFP_ATOMIC);
	if (!skb) {
		ts->base.rx_skb[index] = NULL;
		return -ENOMEM;
	}

	ts->base.rx_skb[index] = skb;

	paddr = FUNC4(ts->base.pdev, skb->data,
			       SKB_BUF_SIZE, PCI_DMA_FROMDEVICE);
	if (FUNC3(ts->base.pdev, paddr)) {
		FUNC5("skb mapping error: %pad\n", &paddr);
		return -ENOMEM;
	}

	rxbd->addr = FUNC2(FUNC0(paddr));
	rxbd->info = FUNC2(QTN_BD_EMPTY | wrap);

	ts->base.rx_bd_w_index = index;

	return 0;
}