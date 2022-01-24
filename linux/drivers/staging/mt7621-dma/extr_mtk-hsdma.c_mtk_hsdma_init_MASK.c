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
struct mtk_hsdma_chan {int desc_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mtk_hsdam_engine {TYPE_1__ ddev; struct mtk_hsdma_chan* chan; } ;
struct hsdma_desc {int dummy; } ;

/* Variables and functions */
 int HSDMA_DESCS_NUM ; 
 int HSDMA_GLO_DEFAULT ; 
 int HSDMA_INFO_RX_MASK ; 
 int HSDMA_INFO_RX_SHIFT ; 
 int HSDMA_INFO_TX_MASK ; 
 int HSDMA_INFO_TX_SHIFT ; 
 int HSDMA_INT_RX_Q0 ; 
 int /*<<< orphan*/  HSDMA_REG_GLO_CFG ; 
 int /*<<< orphan*/  HSDMA_REG_INFO ; 
 int /*<<< orphan*/  HSDMA_REG_INT_MASK ; 
 int /*<<< orphan*/  HSDMA_REG_RX_BASE ; 
 int /*<<< orphan*/  HSDMA_REG_RX_CNT ; 
 int /*<<< orphan*/  HSDMA_REG_TX_BASE ; 
 int /*<<< orphan*/  HSDMA_REG_TX_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hsdam_engine*) ; 
 int FUNC2 (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ; 
 int FUNC3 (struct mtk_hsdam_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_hsdam_engine*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct mtk_hsdam_engine *hsdma)
{
	struct mtk_hsdma_chan *chan;
	int ret;
	u32 reg;

	/* init desc */
	chan = &hsdma->chan[0];
	ret = FUNC2(hsdma, chan);
	if (ret)
		return ret;

	/* tx */
	FUNC5(hsdma, HSDMA_REG_TX_BASE, chan->desc_addr);
	FUNC5(hsdma, HSDMA_REG_TX_CNT, HSDMA_DESCS_NUM);
	/* rx */
	FUNC5(hsdma, HSDMA_REG_RX_BASE, chan->desc_addr +
			(sizeof(struct hsdma_desc) * HSDMA_DESCS_NUM));
	FUNC5(hsdma, HSDMA_REG_RX_CNT, HSDMA_DESCS_NUM);
	/* reset */
	FUNC4(hsdma, chan);

	/* enable rx intr */
	FUNC5(hsdma, HSDMA_REG_INT_MASK, HSDMA_INT_RX_Q0);

	/* enable dma */
	FUNC5(hsdma, HSDMA_REG_GLO_CFG, HSDMA_GLO_DEFAULT);

	/* hardware info */
	reg = FUNC3(hsdma, HSDMA_REG_INFO);
	FUNC0(hsdma->ddev.dev, "rx: %d, tx: %d\n",
		 (reg >> HSDMA_INFO_RX_SHIFT) & HSDMA_INFO_RX_MASK,
		 (reg >> HSDMA_INFO_TX_SHIFT) & HSDMA_INFO_TX_MASK);

	FUNC1(hsdma);

	return ret;
}