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
struct tsi721_bdma_chan {int /*<<< orphan*/  lock; scalar_t__ active; int /*<<< orphan*/  id; } ;
struct dma_chan {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tsi721_bdma_chan* FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct tsi721_bdma_chan*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct tsi721_bdma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *dchan)
{
	struct tsi721_bdma_chan *bdma_chan = FUNC2(dchan);

	FUNC5(DMA, &dchan->dev->device, "DMAC%d", bdma_chan->id);

	FUNC0(&bdma_chan->lock);
	if (FUNC4(bdma_chan) && bdma_chan->active) {
		FUNC3(bdma_chan, NULL);
	}
	FUNC1(&bdma_chan->lock);
}