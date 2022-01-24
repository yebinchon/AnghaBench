#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct mtk_hsdma_chan {TYPE_2__ vchan; int /*<<< orphan*/  id; int /*<<< orphan*/ * desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct mtk_hsdam_engine {TYPE_1__ ddev; int /*<<< orphan*/  chan_issued; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int HSDMA_GLO_RX_BUSY ; 
 int HSDMA_GLO_TX_BUSY ; 
 int /*<<< orphan*/  HSDMA_REG_GLO_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 (int) ; 
 struct mtk_hsdam_engine* FUNC6 (struct mtk_hsdma_chan*) ; 
 int FUNC7 (struct mtk_hsdam_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_hsdam_engine*,struct mtk_hsdma_chan*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (unsigned long,unsigned long) ; 
 struct mtk_hsdma_chan* FUNC12 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct dma_chan *c)
{
	struct mtk_hsdma_chan *chan = FUNC12(c);
	struct mtk_hsdam_engine *hsdma = FUNC6(chan);
	unsigned long timeout;
	FUNC0(head);

	FUNC9(&chan->vchan.lock);
	chan->desc = NULL;
	FUNC1(chan->id, &hsdma->chan_issued);
	FUNC14(&chan->vchan, &head);
	FUNC10(&chan->vchan.lock);

	FUNC13(&chan->vchan, &head);

	/* wait dma transfer complete */
	timeout = jiffies + FUNC5(2000);
	while (FUNC7(hsdma, HSDMA_REG_GLO_CFG) &
			(HSDMA_GLO_RX_BUSY | HSDMA_GLO_TX_BUSY)) {
		if (FUNC11(jiffies, timeout)) {
			FUNC4(hsdma, chan);
			FUNC8(hsdma, chan);
			FUNC3(hsdma->ddev.dev, "timeout, reset it\n");
			break;
		}
		FUNC2();
	}

	return 0;
}