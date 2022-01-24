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
typedef  int u32 ;
struct gdma_dmaengine_chan {int id; size_t next_sg; int fifo_addr; int slave_id; int burst_size; TYPE_2__* desc; } ;
struct gdma_dma_sg {int src_addr; int dst_addr; int len; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct gdma_dma_dev {TYPE_1__ ddev; } ;
typedef  int dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  direction; struct gdma_dma_sg* sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_MEM_TO_MEM ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GDMA_REG_CTRL0_BURST_SHIFT ; 
 int GDMA_REG_CTRL0_DONE_INT ; 
 int GDMA_REG_CTRL0_DST_ADDR_FIXED ; 
 int GDMA_REG_CTRL0_ENABLE ; 
 int GDMA_REG_CTRL0_SRC_ADDR_FIXED ; 
 int GDMA_REG_CTRL0_SW_MODE ; 
 int GDMA_REG_CTRL0_TX_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int GDMA_REG_CTRL1_COHERENT ; 
 int GDMA_REG_CTRL1_DST_REQ_SHIFT ; 
 int GDMA_REG_CTRL1_NEXT_SHIFT ; 
 int GDMA_REG_CTRL1_SRC_REQ_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct gdma_dma_dev* FUNC5 (struct gdma_dmaengine_chan*) ; 
 int FUNC6 (struct gdma_dma_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gdma_dma_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gdma_dma_dev*,int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct gdma_dmaengine_chan *chan)
{
	struct gdma_dma_dev *dma_dev = FUNC5(chan);
	dma_addr_t src_addr, dst_addr;
	struct gdma_dma_sg *sg;
	u32 ctrl0, ctrl1;

	/* verify chan is already stopped */
	ctrl0 = FUNC6(dma_dev, FUNC0(chan->id));
	if (FUNC9(ctrl0 & GDMA_REG_CTRL0_ENABLE)) {
		FUNC4(dma_dev->ddev.dev, "chan %d is start(%08x).\n",
			chan->id, ctrl0);
		FUNC8(dma_dev, chan->id);
		return -EINVAL;
	}

	sg = &chan->desc->sg[chan->next_sg];
	if (chan->desc->direction == DMA_MEM_TO_DEV) {
		src_addr = sg->src_addr;
		dst_addr = chan->fifo_addr;
		ctrl0 = GDMA_REG_CTRL0_DST_ADDR_FIXED;
		ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
			(chan->slave_id << GDMA_REG_CTRL1_DST_REQ_SHIFT);
	} else if (chan->desc->direction == DMA_DEV_TO_MEM) {
		src_addr = chan->fifo_addr;
		dst_addr = sg->dst_addr;
		ctrl0 = GDMA_REG_CTRL0_SRC_ADDR_FIXED;
		ctrl1 = (chan->slave_id << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
			(32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) |
			GDMA_REG_CTRL1_COHERENT;
	} else if (chan->desc->direction == DMA_MEM_TO_MEM) {
		src_addr = sg->src_addr;
		dst_addr = sg->dst_addr;
		ctrl0 = GDMA_REG_CTRL0_SW_MODE;
		ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
			(32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) |
			GDMA_REG_CTRL1_COHERENT;
	} else {
		FUNC4(dma_dev->ddev.dev, "direction type %d error\n",
			chan->desc->direction);
		return -EINVAL;
	}

	ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) |
		 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) |
		 GDMA_REG_CTRL0_DONE_INT | GDMA_REG_CTRL0_ENABLE;
	ctrl1 |= chan->id << GDMA_REG_CTRL1_NEXT_SHIFT;

	chan->next_sg++;
	FUNC7(dma_dev, FUNC3(chan->id), src_addr);
	FUNC7(dma_dev, FUNC2(chan->id), dst_addr);
	FUNC7(dma_dev, FUNC1(chan->id), ctrl1);

	/* make sure next_sg is update */
	FUNC10();
	FUNC7(dma_dev, FUNC0(chan->id), ctrl0);

	return 0;
}