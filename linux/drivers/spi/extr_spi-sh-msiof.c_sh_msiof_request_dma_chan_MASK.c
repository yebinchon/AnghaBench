#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dma_slave_config {int direction; void* src_addr_width; void* src_addr; void* dst_addr_width; void* dst_addr; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
typedef  void* dma_addr_t ;
typedef  int /*<<< orphan*/  cfg ;

/* Variables and functions */
 int DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_chan*) ; 
 struct dma_chan* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct device*,char*) ; 
 int FUNC5 (struct dma_chan*,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_slave_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  shdma_chan_filter ; 

__attribute__((used)) static struct dma_chan *FUNC7(struct device *dev,
	enum dma_transfer_direction dir, unsigned int id, dma_addr_t port_addr)
{
	dma_cap_mask_t mask;
	struct dma_chan *chan;
	struct dma_slave_config cfg;
	int ret;

	FUNC2(mask);
	FUNC1(DMA_SLAVE, mask);

	chan = FUNC4(mask, shdma_chan_filter,
				(void *)(unsigned long)id, dev,
				dir == DMA_MEM_TO_DEV ? "tx" : "rx");
	if (!chan) {
		FUNC0(dev, "dma_request_slave_channel_compat failed\n");
		return NULL;
	}

	FUNC6(&cfg, 0, sizeof(cfg));
	cfg.direction = dir;
	if (dir == DMA_MEM_TO_DEV) {
		cfg.dst_addr = port_addr;
		cfg.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
	} else {
		cfg.src_addr = port_addr;
		cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
	}

	ret = FUNC5(chan, &cfg);
	if (ret) {
		FUNC0(dev, "dmaengine_slave_config failed %d\n", ret);
		FUNC3(chan);
		return NULL;
	}

	return chan;
}