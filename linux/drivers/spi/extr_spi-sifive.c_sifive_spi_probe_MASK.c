#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int num_chipselect; int mode_bits; int flags; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  set_cs; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  bus_num; TYPE_1__ dev; } ;
struct sifive_spi {int fifo_depth; int cs_inactive; int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; int /*<<< orphan*/  done; } ;
struct TYPE_10__ {int /*<<< orphan*/ * dma_mask; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SIFIVE_SPI_DEFAULT_DEPTH ; 
 int SIFIVE_SPI_MAX_CS ; 
 int /*<<< orphan*/  SIFIVE_SPI_REG_CSDEF ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SPI_CONTROLLER_MUST_TX ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LSB_FIRST ; 
 int SPI_MASTER_GPIO_SS ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sifive_spi*) ; 
 int FUNC10 (TYPE_2__*,struct spi_master*) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC16 (struct sifive_spi*) ; 
 int /*<<< orphan*/  sifive_spi_irq ; 
 int /*<<< orphan*/  sifive_spi_prepare_message ; 
 void* FUNC17 (struct sifive_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sifive_spi_set_cs ; 
 int /*<<< orphan*/  sifive_spi_transfer_one ; 
 int /*<<< orphan*/  FUNC18 (struct sifive_spi*,int /*<<< orphan*/ ,int) ; 
 struct spi_master* FUNC19 (TYPE_2__*,int) ; 
 struct sifive_spi* FUNC20 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC21 (struct spi_master*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct sifive_spi *spi;
	int ret, irq, num_cs;
	u32 cs_bits, max_bits_per_word;
	struct spi_master *master;

	master = FUNC19(&pdev->dev, sizeof(struct sifive_spi));
	if (!master) {
		FUNC4(&pdev->dev, "out of memory\n");
		return -ENOMEM;
	}

	spi = FUNC20(master);
	FUNC12(&spi->done);
	FUNC15(pdev, master);

	spi->regs = FUNC8(pdev, 0);
	if (FUNC0(spi->regs)) {
		ret = FUNC1(spi->regs);
		goto put_master;
	}

	spi->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(spi->clk)) {
		FUNC4(&pdev->dev, "Unable to find bus clock\n");
		ret = FUNC1(spi->clk);
		goto put_master;
	}

	irq = FUNC14(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto put_master;
	}

	/* Optional parameters */
	ret =
	  FUNC13(pdev->dev.of_node, "sifive,fifo-depth",
			       &spi->fifo_depth);
	if (ret < 0)
		spi->fifo_depth = SIFIVE_SPI_DEFAULT_DEPTH;

	ret =
	  FUNC13(pdev->dev.of_node, "sifive,max-bits-per-word",
			       &max_bits_per_word);

	if (!ret && max_bits_per_word < 8) {
		FUNC4(&pdev->dev, "Only 8bit SPI words supported by the driver\n");
		ret = -EINVAL;
		goto put_master;
	}

	/* Spin up the bus clock before hitting registers */
	ret = FUNC3(spi->clk);
	if (ret) {
		FUNC4(&pdev->dev, "Unable to enable bus clock\n");
		goto put_master;
	}

	/* probe the number of CS lines */
	spi->cs_inactive = FUNC17(spi, SIFIVE_SPI_REG_CSDEF);
	FUNC18(spi, SIFIVE_SPI_REG_CSDEF, 0xffffffffU);
	cs_bits = FUNC17(spi, SIFIVE_SPI_REG_CSDEF);
	FUNC18(spi, SIFIVE_SPI_REG_CSDEF, spi->cs_inactive);
	if (!cs_bits) {
		FUNC4(&pdev->dev, "Could not auto probe CS lines\n");
		ret = -EINVAL;
		goto put_master;
	}

	num_cs = FUNC11(cs_bits) + 1;
	if (num_cs > SIFIVE_SPI_MAX_CS) {
		FUNC4(&pdev->dev, "Invalid number of spi slaves\n");
		ret = -EINVAL;
		goto put_master;
	}

	/* Define our master */
	master->dev.of_node = pdev->dev.of_node;
	master->bus_num = pdev->id;
	master->num_chipselect = num_cs;
	master->mode_bits = SPI_CPHA | SPI_CPOL
			  | SPI_CS_HIGH | SPI_LSB_FIRST
			  | SPI_TX_DUAL | SPI_TX_QUAD
			  | SPI_RX_DUAL | SPI_RX_QUAD;
	/* TODO: add driver support for bits_per_word < 8
	 * we need to "left-align" the bits (unless SPI_LSB_FIRST)
	 */
	master->bits_per_word_mask = FUNC2(8);
	master->flags = SPI_CONTROLLER_MUST_TX | SPI_MASTER_GPIO_SS;
	master->prepare_message = sifive_spi_prepare_message;
	master->set_cs = sifive_spi_set_cs;
	master->transfer_one = sifive_spi_transfer_one;

	pdev->dev.dma_mask = NULL;
	/* Configure the SPI master hardware */
	FUNC16(spi);

	/* Register for SPI Interrupt */
	ret = FUNC9(&pdev->dev, irq, sifive_spi_irq, 0,
			       FUNC6(&pdev->dev), spi);
	if (ret) {
		FUNC4(&pdev->dev, "Unable to bind to interrupt\n");
		goto put_master;
	}

	FUNC5(&pdev->dev, "mapped; irq=%d, cs=%d\n",
		 irq, master->num_chipselect);

	ret = FUNC10(&pdev->dev, master);
	if (ret < 0) {
		FUNC4(&pdev->dev, "spi_register_master failed\n");
		goto put_master;
	}

	return 0;

put_master:
	FUNC21(master);

	return ret;
}