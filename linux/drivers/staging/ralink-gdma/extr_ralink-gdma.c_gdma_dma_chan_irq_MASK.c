#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct gdma_dmaengine_chan {int next_sg; TYPE_3__ vchan; int /*<<< orphan*/  id; struct gdma_dma_desc* desc; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct gdma_dma_dev {int /*<<< orphan*/  chan_issued; TYPE_2__ ddev; } ;
struct TYPE_9__ {int /*<<< orphan*/  node; } ;
struct gdma_dma_desc {int num_sgs; TYPE_4__ vdesc; TYPE_1__* sg; int /*<<< orphan*/  residue; scalar_t__ cyclic; } ;
struct TYPE_6__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gdma_dmaengine_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC8(struct gdma_dma_dev *dma_dev,
			      struct gdma_dmaengine_chan *chan)
{
	struct gdma_dma_desc *desc;
	unsigned long flags;
	int chan_issued;

	chan_issued = 0;
	FUNC4(&chan->vchan.lock, flags);
	desc = chan->desc;
	if (desc) {
		if (desc->cyclic) {
			FUNC7(&desc->vdesc);
			if (chan->next_sg == desc->num_sgs)
				chan->next_sg = 0;
			chan_issued = 1;
		} else {
			desc->residue -= desc->sg[chan->next_sg - 1].len;
			if (chan->next_sg == desc->num_sgs) {
				FUNC2(&desc->vdesc.node);
				FUNC6(&desc->vdesc);
				chan_issued = FUNC1(chan);
			} else {
				chan_issued = 1;
			}
		}
	} else {
		FUNC0(dma_dev->ddev.dev, "chan %d no desc to complete\n",
			chan->id);
	}
	if (chan_issued)
		FUNC3(chan->id, &dma_dev->chan_issued);
	FUNC5(&chan->vchan.lock, flags);
}