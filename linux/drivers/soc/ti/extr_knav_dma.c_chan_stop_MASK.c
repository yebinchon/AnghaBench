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
struct knav_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  cfg; TYPE_1__* reg_rx_flow; } ;
struct knav_dma_cfg {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  tag_sel; int /*<<< orphan*/  tags; int /*<<< orphan*/  control; int /*<<< orphan*/ * thresh; int /*<<< orphan*/ * fdq_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct knav_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* kdev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct knav_dma_chan *chan)
{
	FUNC3(&chan->lock);
	if (chan->reg_rx_flow) {
		/* first detach fdqs, starve out the flow */
		FUNC5(0, &chan->reg_rx_flow->fdq_sel[0]);
		FUNC5(0, &chan->reg_rx_flow->fdq_sel[1]);
		FUNC5(0, &chan->reg_rx_flow->thresh[0]);
		FUNC5(0, &chan->reg_rx_flow->thresh[1]);
		FUNC5(0, &chan->reg_rx_flow->thresh[2]);
	}

	/* teardown the dma channel */
	FUNC0(chan);

	/* then disconnect the completion side */
	if (chan->reg_rx_flow) {
		FUNC5(0, &chan->reg_rx_flow->control);
		FUNC5(0, &chan->reg_rx_flow->tags);
		FUNC5(0, &chan->reg_rx_flow->tag_sel);
	}

	FUNC2(&chan->cfg, 0, sizeof(struct knav_dma_cfg));
	FUNC4(&chan->lock);

	FUNC1(kdev->dev, "channel stopped\n");
}