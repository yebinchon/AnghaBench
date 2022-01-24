#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int use_gpio_descriptors; int /*<<< orphan*/  can_dma; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; int /*<<< orphan*/  flags; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; TYPE_1__ dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  id; } ;
struct davinci_spi_platform_data {scalar_t__ version; scalar_t__ intr_line; int /*<<< orphan*/  prescaler_limit; int /*<<< orphan*/  num_chipselect; } ;
struct TYPE_12__ {int flags; int /*<<< orphan*/  txrx_bufs; int /*<<< orphan*/  setup_transfer; int /*<<< orphan*/  chipselect; struct spi_master* master; } ;
struct davinci_spi {int base; int irq; int clk; scalar_t__ version; int /*<<< orphan*/ * dma_tx; int /*<<< orphan*/ * dma_rx; TYPE_2__ bitbang; int /*<<< orphan*/  get_tx; int /*<<< orphan*/  get_rx; int /*<<< orphan*/  prescaler_limit; int /*<<< orphan*/  done; int /*<<< orphan*/  pbase; int /*<<< orphan*/ * bytes_per_word; struct davinci_spi_platform_data pdata; } ;

/* Variables and functions */
 int CS_DEFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ SPIDEF ; 
 scalar_t__ SPIGCR0 ; 
 scalar_t__ SPIGCR1 ; 
 int /*<<< orphan*/  SPIGCR1_CLKMOD_MASK ; 
 int /*<<< orphan*/  SPIGCR1_MASTER_MASK ; 
 int /*<<< orphan*/  SPIGCR1_POWERDOWN_MASK ; 
 scalar_t__ SPILVL ; 
 scalar_t__ SPIPC0 ; 
 int SPIPC0_CLKFUN_MASK ; 
 int SPIPC0_DIFUN_MASK ; 
 int SPIPC0_DOFUN_MASK ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int SPI_CS_WORD ; 
 int SPI_INTLVL_0 ; 
 int SPI_INTLVL_1 ; 
 int SPI_LOOP ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  SPI_MASTER_MUST_RX ; 
 int SPI_NO_CS ; 
 int SPI_READY ; 
 scalar_t__ SPI_VERSION_2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  davinci_spi_bufs ; 
 int /*<<< orphan*/  davinci_spi_can_dma ; 
 int /*<<< orphan*/  davinci_spi_chipselect ; 
 int /*<<< orphan*/  davinci_spi_cleanup ; 
 int /*<<< orphan*/  davinci_spi_irq ; 
 int FUNC5 (struct davinci_spi*) ; 
 int /*<<< orphan*/  davinci_spi_rx_buf_u8 ; 
 int /*<<< orphan*/  davinci_spi_setup ; 
 int /*<<< orphan*/  davinci_spi_setup_transfer ; 
 int /*<<< orphan*/  davinci_spi_tx_buf_u8 ; 
 struct davinci_spi_platform_data* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_3__*,struct resource*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct davinci_spi*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dummy_thread_fn ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC20 (TYPE_3__*,int) ; 
 int FUNC21 (TYPE_2__*) ; 
 int FUNC22 (struct platform_device*,struct davinci_spi*) ; 
 struct davinci_spi* FUNC23 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC24 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct spi_master *master;
	struct davinci_spi *dspi;
	struct davinci_spi_platform_data *pdata;
	struct resource *r;
	int ret = 0;
	u32 spipc0;

	master = FUNC20(&pdev->dev, sizeof(struct davinci_spi));
	if (master == NULL) {
		ret = -ENOMEM;
		goto err;
	}

	FUNC18(pdev, master);

	dspi = FUNC23(master);

	if (FUNC6(&pdev->dev)) {
		pdata = FUNC6(&pdev->dev);
		dspi->pdata = *pdata;
	} else {
		/* update dspi pdata with that from the DT */
		ret = FUNC22(pdev, dspi);
		if (ret < 0)
			goto free_master;
	}

	/* pdata in dspi is now updated and point pdata to that */
	pdata = &dspi->pdata;

	dspi->bytes_per_word = FUNC11(&pdev->dev,
					    pdata->num_chipselect,
					    sizeof(*dspi->bytes_per_word),
					    GFP_KERNEL);
	if (dspi->bytes_per_word == NULL) {
		ret = -ENOMEM;
		goto free_master;
	}

	r = FUNC17(pdev, IORESOURCE_MEM, 0);
	if (r == NULL) {
		ret = -ENOENT;
		goto free_master;
	}

	dspi->pbase = r->start;

	dspi->base = FUNC10(&pdev->dev, r);
	if (FUNC0(dspi->base)) {
		ret = FUNC1(dspi->base);
		goto free_master;
	}

	FUNC14(&dspi->done);

	ret = FUNC16(pdev, 0);
	if (ret == 0)
		ret = -EINVAL;
	if (ret < 0)
		goto free_master;
	dspi->irq = ret;

	ret = FUNC12(&pdev->dev, dspi->irq, davinci_spi_irq,
				dummy_thread_fn, 0, FUNC8(&pdev->dev), dspi);
	if (ret)
		goto free_master;

	dspi->bitbang.master = master;

	dspi->clk = FUNC9(&pdev->dev, NULL);
	if (FUNC0(dspi->clk)) {
		ret = -ENODEV;
		goto free_master;
	}
	ret = FUNC4(dspi->clk);
	if (ret)
		goto free_master;

	master->use_gpio_descriptors = true;
	master->dev.of_node = pdev->dev.of_node;
	master->bus_num = pdev->id;
	master->num_chipselect = pdata->num_chipselect;
	master->bits_per_word_mask = FUNC2(2, 16);
	master->flags = SPI_MASTER_MUST_RX;
	master->setup = davinci_spi_setup;
	master->cleanup = davinci_spi_cleanup;
	master->can_dma = davinci_spi_can_dma;

	dspi->bitbang.chipselect = davinci_spi_chipselect;
	dspi->bitbang.setup_transfer = davinci_spi_setup_transfer;
	dspi->prescaler_limit = pdata->prescaler_limit;
	dspi->version = pdata->version;

	dspi->bitbang.flags = SPI_NO_CS | SPI_LSB_FIRST | SPI_LOOP | SPI_CS_WORD;
	if (dspi->version == SPI_VERSION_2)
		dspi->bitbang.flags |= SPI_READY;

	dspi->bitbang.txrx_bufs = davinci_spi_bufs;

	ret = FUNC5(dspi);
	if (ret == -EPROBE_DEFER) {
		goto free_clk;
	} else if (ret) {
		FUNC7(&pdev->dev, "DMA is not supported (%d)\n", ret);
		dspi->dma_rx = NULL;
		dspi->dma_tx = NULL;
	}

	dspi->get_rx = davinci_spi_rx_buf_u8;
	dspi->get_tx = davinci_spi_tx_buf_u8;

	/* Reset In/OUT SPI module */
	FUNC15(0, dspi->base + SPIGCR0);
	FUNC25(100);
	FUNC15(1, dspi->base + SPIGCR0);

	/* Set up SPIPC0.  CS and ENA init is done in davinci_spi_setup */
	spipc0 = SPIPC0_DIFUN_MASK | SPIPC0_DOFUN_MASK | SPIPC0_CLKFUN_MASK;
	FUNC15(spipc0, dspi->base + SPIPC0);

	if (pdata->intr_line)
		FUNC15(SPI_INTLVL_1, dspi->base + SPILVL);
	else
		FUNC15(SPI_INTLVL_0, dspi->base + SPILVL);

	FUNC15(CS_DEFAULT, dspi->base + SPIDEF);

	/* master mode default */
	FUNC19(dspi->base + SPIGCR1, SPIGCR1_CLKMOD_MASK);
	FUNC19(dspi->base + SPIGCR1, SPIGCR1_MASTER_MASK);
	FUNC19(dspi->base + SPIGCR1, SPIGCR1_POWERDOWN_MASK);

	ret = FUNC21(&dspi->bitbang);
	if (ret)
		goto free_dma;

	FUNC7(&pdev->dev, "Controller at 0x%p\n", dspi->base);

	return ret;

free_dma:
	if (dspi->dma_rx) {
		FUNC13(dspi->dma_rx);
		FUNC13(dspi->dma_tx);
	}
free_clk:
	FUNC3(dspi->clk);
free_master:
	FUNC24(master);
err:
	return ret;
}