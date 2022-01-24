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
struct mtk_hsdma_chan {int rx_idx; int next_sg; } ;
struct mtk_hsdam_engine {struct mtk_hsdma_chan* chan; } ;

/* Variables and functions */
 int HSDMA_DESCS_MASK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  HSDMA_REG_RX_CRX ; 
 int /*<<< orphan*/  HSDMA_REG_RX_DRX ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ; 
 int FUNC2 (struct mtk_hsdam_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_hsdam_engine*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct mtk_hsdam_engine *hsdma)
{
	struct mtk_hsdma_chan *chan;
	int next_idx, drx_idx, cnt;

	chan = &hsdma->chan[0];
	next_idx = FUNC0(chan->rx_idx);
	drx_idx = FUNC2(hsdma, HSDMA_REG_RX_DRX);

	cnt = (drx_idx - next_idx) & HSDMA_DESCS_MASK;
	if (!cnt)
		return;

	chan->next_sg += cnt;
	chan->rx_idx = (chan->rx_idx + cnt) & HSDMA_DESCS_MASK;

	/* update rx crx */
	FUNC4();
	FUNC3(hsdma, HSDMA_REG_RX_CRX, chan->rx_idx);

	FUNC1(hsdma, chan);
}