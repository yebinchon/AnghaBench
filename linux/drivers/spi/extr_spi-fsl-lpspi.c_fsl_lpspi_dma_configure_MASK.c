#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spi_controller {int /*<<< orphan*/  dma_rx; int /*<<< orphan*/  dma_tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  bpw; } ;
struct fsl_lpspi_data {int /*<<< orphan*/  dev; scalar_t__ base_phys; TYPE_1__ config; } ;
struct dma_slave_config {int dst_addr_width; int dst_maxburst; int src_addr_width; int src_maxburst; scalar_t__ src_addr; int /*<<< orphan*/  direction; scalar_t__ dst_addr; } ;
typedef  enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_SLAVE_BUSWIDTH_1_BYTE ; 
 int DMA_SLAVE_BUSWIDTH_2_BYTES ; 
 int DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int EINVAL ; 
 scalar_t__ IMX7ULP_RDR ; 
 scalar_t__ IMX7ULP_TDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct dma_slave_config*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct fsl_lpspi_data* FUNC3 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC4(struct spi_controller *controller)
{
	int ret;
	enum dma_slave_buswidth buswidth;
	struct dma_slave_config rx = {}, tx = {};
	struct fsl_lpspi_data *fsl_lpspi =
				FUNC3(controller);

	switch (FUNC2(fsl_lpspi->config.bpw)) {
	case 4:
		buswidth = DMA_SLAVE_BUSWIDTH_4_BYTES;
		break;
	case 2:
		buswidth = DMA_SLAVE_BUSWIDTH_2_BYTES;
		break;
	case 1:
		buswidth = DMA_SLAVE_BUSWIDTH_1_BYTE;
		break;
	default:
		return -EINVAL;
	}

	tx.direction = DMA_MEM_TO_DEV;
	tx.dst_addr = fsl_lpspi->base_phys + IMX7ULP_TDR;
	tx.dst_addr_width = buswidth;
	tx.dst_maxburst = 1;
	ret = FUNC1(controller->dma_tx, &tx);
	if (ret) {
		FUNC0(fsl_lpspi->dev, "TX dma configuration failed with %d\n",
			ret);
		return ret;
	}

	rx.direction = DMA_DEV_TO_MEM;
	rx.src_addr = fsl_lpspi->base_phys + IMX7ULP_RDR;
	rx.src_addr_width = buswidth;
	rx.src_maxburst = 1;
	ret = FUNC1(controller->dma_rx, &rx);
	if (ret) {
		FUNC0(fsl_lpspi->dev, "RX dma configuration failed with %d\n",
			ret);
		return ret;
	}

	return 0;
}