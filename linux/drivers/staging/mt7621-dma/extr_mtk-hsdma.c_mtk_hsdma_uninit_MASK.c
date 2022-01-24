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
struct mtk_hsdma_chan {int dummy; } ;
struct mtk_hsdam_engine {struct mtk_hsdma_chan* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSDMA_REG_GLO_CFG ; 
 int /*<<< orphan*/  HSDMA_REG_INT_MASK ; 
 int /*<<< orphan*/  HSDMA_REG_RX_BASE ; 
 int /*<<< orphan*/  HSDMA_REG_RX_CNT ; 
 int /*<<< orphan*/  HSDMA_REG_TX_BASE ; 
 int /*<<< orphan*/  HSDMA_REG_TX_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_hsdam_engine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mtk_hsdam_engine *hsdma)
{
	struct mtk_hsdma_chan *chan;

	/* disable dma */
	FUNC2(hsdma, HSDMA_REG_GLO_CFG, 0);

	/* disable intr */
	FUNC2(hsdma, HSDMA_REG_INT_MASK, 0);

	/* free desc */
	chan = &hsdma->chan[0];
	FUNC0(hsdma, chan);

	/* tx */
	FUNC2(hsdma, HSDMA_REG_TX_BASE, 0);
	FUNC2(hsdma, HSDMA_REG_TX_CNT, 0);
	/* rx */
	FUNC2(hsdma, HSDMA_REG_RX_BASE, 0);
	FUNC2(hsdma, HSDMA_REG_RX_CNT, 0);
	/* reset */
	FUNC1(hsdma, chan);
}