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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pch_dma_slave {int chan_id; unsigned int width; scalar_t__ rx_reg; int /*<<< orphan*/ * dma_dev; scalar_t__ tx_reg; } ;
struct pch_spi_dma_ctrl {struct dma_chan* chan_rx; struct dma_chan* chan_tx; struct pch_dma_slave param_rx; struct pch_dma_slave param_tx; } ;
struct pch_spi_data {int ch; scalar_t__ use_dma; TYPE_3__* master; scalar_t__ io_base_addr; TYPE_2__* board_dat; struct pch_spi_dma_ctrl dma; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_SLAVE ; 
 unsigned int PCH_DMA_WIDTH_1_BYTE ; 
 unsigned int PCH_DMA_WIDTH_2_BYTES ; 
 scalar_t__ PCH_SPDRR ; 
 scalar_t__ PCH_SPDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_chan*) ; 
 struct dma_chan* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pch_dma_slave*) ; 
 int /*<<< orphan*/  pch_spi_filter ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct pch_spi_data *data, int bpw)
{
	dma_cap_mask_t mask;
	struct dma_chan *chan;
	struct pci_dev *dma_dev;
	struct pch_dma_slave *param;
	struct pch_spi_dma_ctrl *dma;
	unsigned int width;

	if (bpw == 8)
		width = PCH_DMA_WIDTH_1_BYTE;
	else
		width = PCH_DMA_WIDTH_2_BYTES;

	dma = &data->dma;
	FUNC4(mask);
	FUNC3(DMA_SLAVE, mask);

	/* Get DMA's dev information */
	dma_dev = FUNC7(data->board_dat->pdev->bus,
			FUNC0(FUNC1(data->board_dat->pdev->devfn), 0));

	/* Set Tx DMA */
	param = &dma->param_tx;
	param->dma_dev = &dma_dev->dev;
	param->chan_id = data->ch * 2; /* Tx = 0, 2 */;
	param->tx_reg = data->io_base_addr + PCH_SPDWR;
	param->width = width;
	chan = FUNC6(mask, pch_spi_filter, param);
	if (!chan) {
		FUNC2(&data->master->dev,
			"ERROR: dma_request_channel FAILS(Tx)\n");
		data->use_dma = 0;
		return;
	}
	dma->chan_tx = chan;

	/* Set Rx DMA */
	param = &dma->param_rx;
	param->dma_dev = &dma_dev->dev;
	param->chan_id = data->ch * 2 + 1; /* Rx = Tx + 1 */;
	param->rx_reg = data->io_base_addr + PCH_SPDRR;
	param->width = width;
	chan = FUNC6(mask, pch_spi_filter, param);
	if (!chan) {
		FUNC2(&data->master->dev,
			"ERROR: dma_request_channel FAILS(Rx)\n");
		FUNC5(dma->chan_tx);
		dma->chan_tx = NULL;
		data->use_dma = 0;
		return;
	}
	dma->chan_rx = chan;
}