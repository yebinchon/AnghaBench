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
struct gdma_dmaengine_chan {int /*<<< orphan*/  id; TYPE_2__ vchan; int /*<<< orphan*/ * desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct gdma_dma_dev {TYPE_1__ ddev; int /*<<< orphan*/  chan_issued; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GDMA_REG_CTRL0_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct gdma_dma_dev* FUNC6 (struct gdma_dmaengine_chan*) ; 
 int FUNC7 (struct gdma_dma_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gdma_dma_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 unsigned long jiffies ; 
 unsigned long FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 
 struct gdma_dmaengine_chan* FUNC13 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct dma_chan *c)
{
	struct gdma_dmaengine_chan *chan = FUNC13(c);
	struct gdma_dma_dev *dma_dev = FUNC6(chan);
	unsigned long flags, timeout;
	FUNC1(head);
	int i = 0;

	FUNC10(&chan->vchan.lock, flags);
	chan->desc = NULL;
	FUNC2(chan->id, &dma_dev->chan_issued);
	FUNC15(&chan->vchan, &head);
	FUNC11(&chan->vchan.lock, flags);

	FUNC14(&chan->vchan, &head);

	/* wait dma transfer complete */
	timeout = jiffies + FUNC9(5000);
	while (FUNC7(dma_dev, FUNC0(chan->id)) &
			GDMA_REG_CTRL0_ENABLE) {
		if (FUNC12(jiffies, timeout)) {
			FUNC5(dma_dev->ddev.dev, "chan %d wait timeout\n",
				chan->id);
			/* restore to init value */
			FUNC8(dma_dev, FUNC0(chan->id), 0);
			break;
		}
		FUNC3();
		i++;
	}

	if (i)
		FUNC4(dma_dev->ddev.dev, "terminate chan %d loops %d\n",
			chan->id, i);

	return 0;
}