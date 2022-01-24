#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ti_qspi {int spi_max_frequency; int mmap_enabled; int /*<<< orphan*/ * mmap_base; int /*<<< orphan*/ * rx_chan; scalar_t__ mmap_phys_base; int /*<<< orphan*/  transfer_complete; TYPE_2__* dev; int /*<<< orphan*/  rx_bb_addr; int /*<<< orphan*/  rx_bb_dma_addr; int /*<<< orphan*/ * fclk; int /*<<< orphan*/  ctrl_reg; int /*<<< orphan*/ * ctrl_base; int /*<<< orphan*/ * base; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  mmap_size; struct spi_master* master; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct spi_master {int mode_bits; int auto_runtime_pm; int bits_per_word_mask; int num_chipselect; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * dma_rx; TYPE_1__ dev; int /*<<< orphan*/  transfer_one_message; int /*<<< orphan*/  setup; int /*<<< orphan*/  flags; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_14__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QSPI_AUTOSUSPEND_TIMEOUT ; 
 int /*<<< orphan*/  QSPI_DMA_BUFFER_SIZE ; 
 int FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int /*<<< orphan*/  SPI_MASTER_HALF_DUPLEX ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,char*) ; 
 void* FUNC6 (TYPE_2__*,struct resource*) ; 
 int FUNC7 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct device_node*,char*,int*) ; 
 int FUNC17 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct ti_qspi*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (struct resource*) ; 
 struct spi_master* FUNC27 (TYPE_2__*,int) ; 
 struct ti_qspi* FUNC28 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC29 (struct spi_master*) ; 
 int /*<<< orphan*/ * FUNC30 (struct device_node*,char*) ; 
 int /*<<< orphan*/  ti_qspi_mem_ops ; 
 int /*<<< orphan*/  ti_qspi_setup ; 
 int /*<<< orphan*/  ti_qspi_start_transfer_one ; 

__attribute__((used)) static int FUNC31(struct platform_device *pdev)
{
	struct  ti_qspi *qspi;
	struct spi_master *master;
	struct resource         *r, *res_mmap;
	struct device_node *np = pdev->dev.of_node;
	u32 max_freq;
	int ret = 0, num_cs, irq;
	dma_cap_mask_t mask;

	master = FUNC27(&pdev->dev, sizeof(*qspi));
	if (!master)
		return -ENOMEM;

	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_RX_DUAL | SPI_RX_QUAD;

	master->flags = SPI_MASTER_HALF_DUPLEX;
	master->setup = ti_qspi_setup;
	master->auto_runtime_pm = true;
	master->transfer_one_message = ti_qspi_start_transfer_one;
	master->dev.of_node = pdev->dev.of_node;
	master->bits_per_word_mask = FUNC2(32) | FUNC2(16) |
				     FUNC2(8);
	master->mem_ops = &ti_qspi_mem_ops;

	if (!FUNC16(np, "num-cs", &num_cs))
		master->num_chipselect = num_cs;

	qspi = FUNC28(master);
	qspi->master = master;
	qspi->dev = &pdev->dev;
	FUNC21(pdev, qspi);

	r = FUNC20(pdev, IORESOURCE_MEM, "qspi_base");
	if (r == NULL) {
		r = FUNC19(pdev, IORESOURCE_MEM, 0);
		if (r == NULL) {
			FUNC3(&pdev->dev, "missing platform data\n");
			ret = -ENODEV;
			goto free_master;
		}
	}

	res_mmap = FUNC20(pdev,
			IORESOURCE_MEM, "qspi_mmap");
	if (res_mmap == NULL) {
		res_mmap = FUNC19(pdev, IORESOURCE_MEM, 1);
		if (res_mmap == NULL) {
			FUNC3(&pdev->dev,
				"memory mapped resource not required\n");
		}
	}

	if (res_mmap)
		qspi->mmap_size = FUNC26(res_mmap);

	irq = FUNC18(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto free_master;
	}

	FUNC14(&qspi->list_lock);

	qspi->base = FUNC6(&pdev->dev, r);
	if (FUNC0(qspi->base)) {
		ret = FUNC1(qspi->base);
		goto free_master;
	}


	if (FUNC15(np, "syscon-chipselects")) {
		qspi->ctrl_base =
		FUNC30(np,
						"syscon-chipselects");
		if (FUNC0(qspi->ctrl_base)) {
			ret = FUNC1(qspi->ctrl_base);
			goto free_master;
		}
		ret = FUNC17(np,
						 "syscon-chipselects",
						 1, &qspi->ctrl_reg);
		if (ret) {
			FUNC3(&pdev->dev,
				"couldn't get ctrl_mod reg index\n");
			goto free_master;
		}
	}

	qspi->fclk = FUNC5(&pdev->dev, "fck");
	if (FUNC0(qspi->fclk)) {
		ret = FUNC1(qspi->fclk);
		FUNC3(&pdev->dev, "could not get clk: %d\n", ret);
	}

	FUNC25(&pdev->dev);
	FUNC24(&pdev->dev, QSPI_AUTOSUSPEND_TIMEOUT);
	FUNC23(&pdev->dev);

	if (!FUNC16(np, "spi-max-frequency", &max_freq))
		qspi->spi_max_frequency = max_freq;

	FUNC10(mask);
	FUNC9(DMA_MEMCPY, mask);

	qspi->rx_chan = FUNC12(&mask);
	if (FUNC0(qspi->rx_chan)) {
		FUNC3(qspi->dev,
			"No Rx DMA available, trying mmap mode\n");
		qspi->rx_chan = NULL;
		ret = 0;
		goto no_dma;
	}
	qspi->rx_bb_addr = FUNC8(qspi->dev,
					      QSPI_DMA_BUFFER_SIZE,
					      &qspi->rx_bb_dma_addr,
					      GFP_KERNEL | GFP_DMA);
	if (!qspi->rx_bb_addr) {
		FUNC3(qspi->dev,
			"dma_alloc_coherent failed, using PIO mode\n");
		FUNC11(qspi->rx_chan);
		goto no_dma;
	}
	master->dma_rx = qspi->rx_chan;
	FUNC13(&qspi->transfer_complete);
	if (res_mmap)
		qspi->mmap_phys_base = (dma_addr_t)res_mmap->start;

no_dma:
	if (!qspi->rx_chan && res_mmap) {
		qspi->mmap_base = FUNC6(&pdev->dev, res_mmap);
		if (FUNC0(qspi->mmap_base)) {
			FUNC4(&pdev->dev,
				 "mmap failed with error %ld using PIO mode\n",
				 FUNC1(qspi->mmap_base));
			qspi->mmap_base = NULL;
			master->mem_ops = NULL;
		}
	}
	qspi->mmap_enabled = false;

	ret = FUNC7(&pdev->dev, master);
	if (!ret)
		return 0;

	FUNC22(&pdev->dev);
free_master:
	FUNC29(master);
	return ret;
}