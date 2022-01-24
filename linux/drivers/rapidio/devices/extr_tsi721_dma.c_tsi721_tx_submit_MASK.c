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
struct tsi721_tx_desc {int /*<<< orphan*/  desc_node; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct tsi721_bdma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  active; int /*<<< orphan*/  id; TYPE_2__ dchan; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_IN_PROGRESS ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tsi721_bdma_chan* FUNC5 (int /*<<< orphan*/ ) ; 
 struct tsi721_tx_desc* FUNC6 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (struct tsi721_bdma_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static dma_cookie_t FUNC9(struct dma_async_tx_descriptor *txd)
{
	struct tsi721_tx_desc *desc = FUNC6(txd);
	struct tsi721_bdma_chan *bdma_chan = FUNC5(txd->chan);
	dma_cookie_t cookie;

	/* Check if the descriptor is detached from any lists */
	if (!FUNC2(&desc->desc_node)) {
		FUNC8(&bdma_chan->dchan.dev->device,
			"DMAC%d wrong state of descriptor %p",
			bdma_chan->id, txd);
		return -EIO;
	}

	FUNC3(&bdma_chan->lock);

	if (!bdma_chan->active) {
		FUNC4(&bdma_chan->lock);
		return -ENODEV;
	}

	cookie = FUNC0(txd);
	desc->status = DMA_IN_PROGRESS;
	FUNC1(&desc->desc_node, &bdma_chan->queue);
	FUNC7(bdma_chan, NULL);

	FUNC4(&bdma_chan->lock);
	return cookie;
}