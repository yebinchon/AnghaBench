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
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_submit; } ;
struct tsi721_tx_desc {int /*<<< orphan*/  desc_node; TYPE_2__ txd; } ;
struct tsi721_bdma_chan {int active; int /*<<< orphan*/  free_list; struct tsi721_tx_desc* tx_desc; int /*<<< orphan*/  id; scalar_t__ bd_base; } ;
struct dma_chan {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA ; 
 int /*<<< orphan*/  DMA_CTRL_ACK ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  dma_desc_per_channel ; 
 int dma_txqueue_sz ; 
 struct tsi721_tx_desc* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tsi721_bdma_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct tsi721_bdma_chan*) ; 
 scalar_t__ FUNC6 (struct tsi721_bdma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tsi721_bdma_chan*,int) ; 
 int /*<<< orphan*/  tsi721_tx_submit ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dma_chan *dchan)
{
	struct tsi721_bdma_chan *bdma_chan = FUNC4(dchan);
	struct tsi721_tx_desc *desc;
	int i;

	FUNC8(DMA, &dchan->dev->device, "DMAC%d", bdma_chan->id);

	if (bdma_chan->bd_base)
		return dma_txqueue_sz;

	/* Initialize BDMA channel */
	if (FUNC6(bdma_chan, dma_desc_per_channel)) {
		FUNC9(&dchan->dev->device, "Unable to initialize DMAC%d",
			bdma_chan->id);
		return -ENODEV;
	}

	/* Allocate queue of transaction descriptors */
	desc = FUNC2(dma_txqueue_sz, sizeof(struct tsi721_tx_desc),
			GFP_ATOMIC);
	if (!desc) {
		FUNC5(bdma_chan);
		return -ENOMEM;
	}

	bdma_chan->tx_desc = desc;

	for (i = 0; i < dma_txqueue_sz; i++) {
		FUNC0(&desc[i].txd, dchan);
		desc[i].txd.tx_submit = tsi721_tx_submit;
		desc[i].txd.flags = DMA_CTRL_ACK;
		FUNC3(&desc[i].desc_node, &bdma_chan->free_list);
	}

	FUNC1(dchan);

	bdma_chan->active = true;
	FUNC7(bdma_chan, 1);

	return dma_txqueue_sz;
}