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
struct knav_dma_chan {TYPE_1__* dma; int /*<<< orphan*/  flow; int /*<<< orphan*/  channel; int /*<<< orphan*/  ref_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct knav_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* kdev ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void *channel)
{
	struct knav_dma_chan *chan = channel;

	if (!kdev) {
		FUNC4("keystone-navigator-dma driver not registered\n");
		return;
	}

	if (FUNC0(&chan->ref_count) <= 0)
		FUNC1(chan);

	if (FUNC0(&chan->dma->ref_count) <= 0)
		FUNC3(chan->dma);

	FUNC2(kdev->dev, "channel %d or flow %d closed from DMA %s\n",
			chan->channel, chan->flow, chan->dma->name);
}