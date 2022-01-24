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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_slink_data {int /*<<< orphan*/  dma_buf_size; int /*<<< orphan*/  dev; void* tx_dma_phys; int /*<<< orphan*/ * tx_dma_buf; struct dma_chan* tx_dma_chan; void* rx_dma_phys; int /*<<< orphan*/ * rx_dma_buf; struct dma_chan* rx_dma_chan; scalar_t__ phys; } ;
struct dma_slave_config {scalar_t__ dst_maxburst; void* dst_addr_width; scalar_t__ dst_addr; scalar_t__ src_maxburst; void* src_addr_width; scalar_t__ src_addr; } ;
struct dma_chan {int dummy; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dma_chan*) ; 
 int FUNC1 (struct dma_chan*) ; 
 scalar_t__ SLINK_RX_FIFO ; 
 scalar_t__ SLINK_TX_FIFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_chan*) ; 
 struct dma_chan* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct dma_chan*,struct dma_slave_config*) ; 

__attribute__((used)) static int FUNC8(struct tegra_slink_data *tspi,
			bool dma_to_memory)
{
	struct dma_chan *dma_chan;
	u32 *dma_buf;
	dma_addr_t dma_phys;
	int ret;
	struct dma_slave_config dma_sconfig;

	dma_chan = FUNC6(tspi->dev,
						dma_to_memory ? "rx" : "tx");
	if (FUNC0(dma_chan)) {
		ret = FUNC1(dma_chan);
		if (ret != -EPROBE_DEFER)
			FUNC2(tspi->dev,
				"Dma channel is not available: %d\n", ret);
		return ret;
	}

	dma_buf = FUNC3(tspi->dev, tspi->dma_buf_size,
				&dma_phys, GFP_KERNEL);
	if (!dma_buf) {
		FUNC2(tspi->dev, " Not able to allocate the dma buffer\n");
		FUNC5(dma_chan);
		return -ENOMEM;
	}

	if (dma_to_memory) {
		dma_sconfig.src_addr = tspi->phys + SLINK_RX_FIFO;
		dma_sconfig.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
		dma_sconfig.src_maxburst = 0;
	} else {
		dma_sconfig.dst_addr = tspi->phys + SLINK_TX_FIFO;
		dma_sconfig.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
		dma_sconfig.dst_maxburst = 0;
	}

	ret = FUNC7(dma_chan, &dma_sconfig);
	if (ret)
		goto scrub;
	if (dma_to_memory) {
		tspi->rx_dma_chan = dma_chan;
		tspi->rx_dma_buf = dma_buf;
		tspi->rx_dma_phys = dma_phys;
	} else {
		tspi->tx_dma_chan = dma_chan;
		tspi->tx_dma_buf = dma_buf;
		tspi->tx_dma_phys = dma_phys;
	}
	return 0;

scrub:
	FUNC4(tspi->dev, tspi->dma_buf_size, dma_buf, dma_phys);
	FUNC5(dma_chan);
	return ret;
}