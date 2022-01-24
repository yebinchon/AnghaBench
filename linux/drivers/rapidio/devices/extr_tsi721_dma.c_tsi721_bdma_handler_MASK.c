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
struct tsi721_bdma_chan {int /*<<< orphan*/  tasklet; scalar_t__ active; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ TSI721_DMAC_INTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct tsi721_bdma_chan *bdma_chan)
{
	/* Disable BDMA channel interrupts */
	FUNC0(0, bdma_chan->regs + TSI721_DMAC_INTE);
	if (bdma_chan->active)
		FUNC1(&bdma_chan->tasklet);
}