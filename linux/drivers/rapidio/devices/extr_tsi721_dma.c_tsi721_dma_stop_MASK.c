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
struct tsi721_bdma_chan {int /*<<< orphan*/  lock; scalar_t__ regs; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 scalar_t__ TSI721_DMAC_CTL ; 
 int /*<<< orphan*/  TSI721_DMAC_CTL_SUSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tsi721_bdma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct tsi721_bdma_chan *bdma_chan)
{
	if (!bdma_chan->active)
		return;
	FUNC1(&bdma_chan->lock);
	if (!FUNC3(bdma_chan)) {
		int timeout = 100000;

		/* stop the transfer in progress */
		FUNC0(TSI721_DMAC_CTL_SUSP,
			  bdma_chan->regs + TSI721_DMAC_CTL);

		/* Wait until DMA channel stops */
		while (!FUNC3(bdma_chan) && --timeout)
			FUNC4(1);
	}

	FUNC2(&bdma_chan->lock);
}