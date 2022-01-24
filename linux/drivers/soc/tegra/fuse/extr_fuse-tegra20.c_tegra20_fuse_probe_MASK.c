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
struct TYPE_3__ {int src_maxburst; int dst_maxburst; int device_fc; int /*<<< orphan*/  direction; void* dst_addr_width; void* src_addr_width; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; TYPE_1__ config; int /*<<< orphan*/  chan; int /*<<< orphan*/  virt; int /*<<< orphan*/  phys; } ;
struct tegra_fuse {int /*<<< orphan*/  read; TYPE_2__ apbdma; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_filter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra20_fuse_read ; 

__attribute__((used)) static int FUNC7(struct tegra_fuse *fuse)
{
	dma_cap_mask_t mask;

	FUNC2(mask);
	FUNC1(DMA_SLAVE, mask);

	fuse->apbdma.chan = FUNC4(mask, dma_filter, NULL);
	if (!fuse->apbdma.chan)
		return -EPROBE_DEFER;

	fuse->apbdma.virt = FUNC0(fuse->dev, sizeof(u32),
					       &fuse->apbdma.phys,
					       GFP_KERNEL);
	if (!fuse->apbdma.virt) {
		FUNC3(fuse->apbdma.chan);
		return -ENOMEM;
	}

	fuse->apbdma.config.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
	fuse->apbdma.config.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
	fuse->apbdma.config.src_maxburst = 1;
	fuse->apbdma.config.dst_maxburst = 1;
	fuse->apbdma.config.direction = DMA_DEV_TO_MEM;
	fuse->apbdma.config.device_fc = false;

	FUNC5(&fuse->apbdma.wait);
	FUNC6(&fuse->apbdma.lock);
	fuse->read = tegra20_fuse_read;

	return 0;
}