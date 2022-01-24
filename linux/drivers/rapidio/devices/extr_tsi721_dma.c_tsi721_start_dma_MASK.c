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
struct TYPE_4__ {TYPE_1__* dev; } ;
struct tsi721_bdma_chan {scalar_t__ wr_count; scalar_t__ wr_count_next; scalar_t__ regs; int /*<<< orphan*/  id; TYPE_2__ dchan; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA ; 
 scalar_t__ TSI721_DMAC_DWRCNT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tsi721_bdma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC6(struct tsi721_bdma_chan *bdma_chan)
{
	if (!FUNC3(bdma_chan)) {
		FUNC5(&bdma_chan->dchan.dev->device,
			"DMAC%d Attempt to start non-idle channel",
			bdma_chan->id);
		return;
	}

	if (bdma_chan->wr_count == bdma_chan->wr_count_next) {
		FUNC5(&bdma_chan->dchan.dev->device,
			"DMAC%d Attempt to start DMA with no BDs ready %d",
			bdma_chan->id, FUNC2(current));
		return;
	}

	FUNC4(DMA, &bdma_chan->dchan.dev->device, "DMAC%d (wrc=%d) %d",
		  bdma_chan->id, bdma_chan->wr_count_next,
		  FUNC2(current));

	FUNC1(bdma_chan->wr_count_next,
		bdma_chan->regs + TSI721_DMAC_DWRCNT);
	FUNC0(bdma_chan->regs + TSI721_DMAC_DWRCNT);

	bdma_chan->wr_count = bdma_chan->wr_count_next;
}