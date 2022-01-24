#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_6__ {int flags; void* callback_param; int /*<<< orphan*/  (* callback ) (void*) ;} ;
struct tsi721_tx_desc {scalar_t__ sg_len; int /*<<< orphan*/  desc_node; TYPE_3__ txd; int /*<<< orphan*/  status; int /*<<< orphan*/  rio_addr; int /*<<< orphan*/  destid; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct tsi721_bdma_chan {scalar_t__ regs; int /*<<< orphan*/  lock; struct tsi721_tx_desc* active_tx; scalar_t__ active; int /*<<< orphan*/  free_list; int /*<<< orphan*/  id; TYPE_2__ dchan; scalar_t__ sts_rdptr; scalar_t__ wr_count_next; scalar_t__ wr_count; int /*<<< orphan*/  sts_size; scalar_t__ sts_phys; scalar_t__ bd_phys; } ;
typedef  int /*<<< orphan*/  (* dma_async_tx_callback ) (void*) ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA ; 
 int /*<<< orphan*/  DMA_COMPLETE ; 
 int /*<<< orphan*/  DMA_ERROR ; 
 int DMA_PREP_INTERRUPT ; 
 scalar_t__ TSI721_DMAC_CTL ; 
 int TSI721_DMAC_CTL_INIT ; 
 scalar_t__ TSI721_DMAC_DPTRH ; 
 scalar_t__ TSI721_DMAC_DPTRL ; 
 int TSI721_DMAC_DPTRL_MASK ; 
 scalar_t__ TSI721_DMAC_DSBH ; 
 scalar_t__ TSI721_DMAC_DSBL ; 
 int TSI721_DMAC_DSBL_MASK ; 
 scalar_t__ TSI721_DMAC_DSSZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TSI721_DMAC_INT ; 
 scalar_t__ TSI721_DMAC_INTE ; 
 int TSI721_DMAC_INT_ALL ; 
 int TSI721_DMAC_INT_DONE ; 
 int TSI721_DMAC_INT_ERR ; 
 int TSI721_DMAC_INT_IOFDONE ; 
 int TSI721_DMAC_INT_STFULL ; 
 scalar_t__ TSI721_DMAC_STS ; 
 int TSI721_DMAC_STS_ABORT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tsi721_bdma_chan*,struct tsi721_tx_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct tsi721_bdma_chan*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(unsigned long data)
{
	struct tsi721_bdma_chan *bdma_chan = (struct tsi721_bdma_chan *)data;
	u32 dmac_int, dmac_sts;

	dmac_int = FUNC2(bdma_chan->regs + TSI721_DMAC_INT);
	FUNC9(DMA, &bdma_chan->dchan.dev->device, "DMAC%d_INT = 0x%x",
		  bdma_chan->id, dmac_int);
	/* Clear channel interrupts */
	FUNC3(dmac_int, bdma_chan->regs + TSI721_DMAC_INT);

	if (dmac_int & TSI721_DMAC_INT_ERR) {
		int i = 10000;
		struct tsi721_tx_desc *desc;

		desc = bdma_chan->active_tx;
		dmac_sts = FUNC2(bdma_chan->regs + TSI721_DMAC_STS);
		FUNC10(&bdma_chan->dchan.dev->device,
			"DMAC%d_STS = 0x%x did=%d raddr=0x%llx",
			bdma_chan->id, dmac_sts, desc->destid, desc->rio_addr);

		/* Re-initialize DMA channel if possible */

		if ((dmac_sts & TSI721_DMAC_STS_ABORT) == 0)
			goto err_out;

		FUNC8(bdma_chan);

		FUNC5(&bdma_chan->lock);

		/* Put DMA channel into init state */
		FUNC3(TSI721_DMAC_CTL_INIT,
			  bdma_chan->regs + TSI721_DMAC_CTL);
		do {
			FUNC11(1);
			dmac_sts = FUNC2(bdma_chan->regs + TSI721_DMAC_STS);
			i--;
		} while ((dmac_sts & TSI721_DMAC_STS_ABORT) && i);

		if (dmac_sts & TSI721_DMAC_STS_ABORT) {
			FUNC10(&bdma_chan->dchan.dev->device,
				"Failed to re-initiate DMAC%d",	bdma_chan->id);
			FUNC6(&bdma_chan->lock);
			goto err_out;
		}

		/* Setup DMA descriptor pointers */
		FUNC3(((u64)bdma_chan->bd_phys >> 32),
			bdma_chan->regs + TSI721_DMAC_DPTRH);
		FUNC3(((u64)bdma_chan->bd_phys & TSI721_DMAC_DPTRL_MASK),
			bdma_chan->regs + TSI721_DMAC_DPTRL);

		/* Setup descriptor status FIFO */
		FUNC3(((u64)bdma_chan->sts_phys >> 32),
			bdma_chan->regs + TSI721_DMAC_DSBH);
		FUNC3(((u64)bdma_chan->sts_phys & TSI721_DMAC_DSBL_MASK),
			bdma_chan->regs + TSI721_DMAC_DSBL);
		FUNC3(FUNC0(bdma_chan->sts_size),
			bdma_chan->regs + TSI721_DMAC_DSSZ);

		/* Clear interrupt bits */
		FUNC3(TSI721_DMAC_INT_ALL,
			bdma_chan->regs + TSI721_DMAC_INT);

		FUNC2(bdma_chan->regs + TSI721_DMAC_INT);

		bdma_chan->wr_count = bdma_chan->wr_count_next = 0;
		bdma_chan->sts_rdptr = 0;
		FUNC11(10);

		desc = bdma_chan->active_tx;
		desc->status = DMA_ERROR;
		FUNC1(&desc->txd);
		FUNC4(&desc->desc_node, &bdma_chan->free_list);
		bdma_chan->active_tx = NULL;
		if (bdma_chan->active)
			FUNC7(bdma_chan, NULL);
		FUNC6(&bdma_chan->lock);
	}

	if (dmac_int & TSI721_DMAC_INT_STFULL) {
		FUNC10(&bdma_chan->dchan.dev->device,
			"DMAC%d descriptor status FIFO is full",
			bdma_chan->id);
	}

	if (dmac_int & (TSI721_DMAC_INT_DONE | TSI721_DMAC_INT_IOFDONE)) {
		struct tsi721_tx_desc *desc;

		FUNC8(bdma_chan);
		FUNC5(&bdma_chan->lock);
		desc = bdma_chan->active_tx;

		if (desc->sg_len == 0) {
			dma_async_tx_callback callback = NULL;
			void *param = NULL;

			desc->status = DMA_COMPLETE;
			FUNC1(&desc->txd);
			if (desc->txd.flags & DMA_PREP_INTERRUPT) {
				callback = desc->txd.callback;
				param = desc->txd.callback_param;
			}
			FUNC4(&desc->desc_node, &bdma_chan->free_list);
			bdma_chan->active_tx = NULL;
			if (bdma_chan->active)
				FUNC7(bdma_chan, NULL);
			FUNC6(&bdma_chan->lock);
			if (callback)
				callback(param);
		} else {
			if (bdma_chan->active)
				FUNC7(bdma_chan,
						    bdma_chan->active_tx);
			FUNC6(&bdma_chan->lock);
		}
	}
err_out:
	/* Re-Enable BDMA channel interrupts */
	FUNC3(TSI721_DMAC_INT_ALL, bdma_chan->regs + TSI721_DMAC_INTE);
}