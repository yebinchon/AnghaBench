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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct gdma_dmaengine_chan {TYPE_2__ vchan; int /*<<< orphan*/  id; int /*<<< orphan*/  desc; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct gdma_dma_dev {TYPE_1__ ddev; int /*<<< orphan*/  task; int /*<<< orphan*/  chan_issued; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct gdma_dma_dev* FUNC1 (struct gdma_dmaengine_chan*) ; 
 scalar_t__ FUNC2 (struct gdma_dmaengine_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct gdma_dmaengine_chan* FUNC7 (struct dma_chan*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(struct dma_chan *c)
{
	struct gdma_dmaengine_chan *chan = FUNC7(c);
	struct gdma_dma_dev *dma_dev = FUNC1(chan);
	unsigned long flags;

	FUNC4(&chan->vchan.lock, flags);
	if (FUNC8(&chan->vchan) && !chan->desc) {
		if (FUNC2(chan)) {
			FUNC3(chan->id, &dma_dev->chan_issued);
			FUNC6(&dma_dev->task);
		} else {
			FUNC0(dma_dev->ddev.dev, "chan %d no desc to issue\n",
				chan->id);
		}
	}
	FUNC5(&chan->vchan.lock, flags);
}