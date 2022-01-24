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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {scalar_t__ src_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * virt; int /*<<< orphan*/  chan; int /*<<< orphan*/  wait; int /*<<< orphan*/  phys; TYPE_2__ config; } ;
struct tegra_fuse {TYPE_1__ apbdma; int /*<<< orphan*/  clk; scalar_t__ phys; } ;
struct dma_async_tx_descriptor {struct tegra_fuse* callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 unsigned long DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 unsigned long DMA_PREP_INTERRUPT ; 
 scalar_t__ FUSE_BEGIN ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  apb_dma_complete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC13(struct tegra_fuse *fuse, unsigned int offset)
{
	unsigned long flags = DMA_PREP_INTERRUPT | DMA_CTRL_ACK;
	struct dma_async_tx_descriptor *dma_desc;
	unsigned long time_left;
	u32 value = 0;
	int err;

	FUNC9(&fuse->apbdma.lock);

	fuse->apbdma.config.src_addr = fuse->phys + FUSE_BEGIN + offset;

	err = FUNC5(fuse->apbdma.chan, &fuse->apbdma.config);
	if (err)
		goto out;

	dma_desc = FUNC4(fuse->apbdma.chan,
					       fuse->apbdma.phys,
					       sizeof(u32), DMA_DEV_TO_MEM,
					       flags);
	if (!dma_desc)
		goto out;

	dma_desc->callback = apb_dma_complete;
	dma_desc->callback_param = fuse;

	FUNC11(&fuse->apbdma.wait);

	FUNC2(fuse->clk);

	FUNC6(dma_desc);
	FUNC3(fuse->apbdma.chan);
	time_left = FUNC12(&fuse->apbdma.wait,
						FUNC8(50));

	if (FUNC0(time_left == 0, "apb read dma timed out"))
		FUNC7(fuse->apbdma.chan);
	else
		value = *fuse->apbdma.virt;

	FUNC1(fuse->clk);

out:
	FUNC10(&fuse->apbdma.lock);
	return value;
}