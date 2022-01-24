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
struct tegra_spi_data {void* tx_dma_phys; int /*<<< orphan*/ * tx_dma_buf; struct dma_chan* tx_dma_chan; void* rx_dma_phys; int /*<<< orphan*/ * rx_dma_buf; struct dma_chan* rx_dma_chan; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_buf_size; } ;
struct dma_chan {int dummy; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dma_chan*) ; 
 int FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 struct dma_chan* FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct tegra_spi_data *tspi,
			bool dma_to_memory)
{
	struct dma_chan *dma_chan;
	u32 *dma_buf;
	dma_addr_t dma_phys;
	int ret;

	dma_chan = FUNC5(tspi->dev,
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
		FUNC4(dma_chan);
		return -ENOMEM;
	}

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
}