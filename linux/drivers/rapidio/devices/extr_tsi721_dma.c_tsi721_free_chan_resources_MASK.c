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
struct tsi721_bdma_chan {int active; int /*<<< orphan*/  tx_desc; int /*<<< orphan*/  free_list; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  bd_base; int /*<<< orphan*/  id; } ;
struct dma_chan {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tsi721_bdma_chan* FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct tsi721_bdma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct tsi721_bdma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tsi721_bdma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct dma_chan *dchan)
{
	struct tsi721_bdma_chan *bdma_chan = FUNC3(dchan);

	FUNC7(DMA, &dchan->dev->device, "DMAC%d", bdma_chan->id);

	if (!bdma_chan->bd_base)
		return;

	FUNC5(bdma_chan, 0);
	bdma_chan->active = false;
	FUNC6(bdma_chan);
	FUNC2(&bdma_chan->tasklet);
	FUNC0(&bdma_chan->free_list);
	FUNC1(bdma_chan->tx_desc);
	FUNC4(bdma_chan);
}