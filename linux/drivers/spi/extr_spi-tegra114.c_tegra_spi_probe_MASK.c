#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct tegra_spi_data {int irq; int max_buf_size; int dma_buf_size; scalar_t__ last_used_cs; void* def_command2_reg; void* spi_cs_timing2; void* spi_cs_timing1; int /*<<< orphan*/  def_command1_reg; int /*<<< orphan*/  rst; int /*<<< orphan*/  xfer_completion; int /*<<< orphan*/  rx_dma_complete; int /*<<< orphan*/  tx_dma_complete; int /*<<< orphan*/  clk; int /*<<< orphan*/  phys; int /*<<< orphan*/  base; int /*<<< orphan*/  soc_data; int /*<<< orphan*/  lock; TYPE_2__* dev; struct spi_master* master; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int max_speed_hz; int use_gpio_descriptors; int mode_bits; int auto_runtime_pm; int bus_num; TYPE_1__ dev; scalar_t__ num_chipselect; int /*<<< orphan*/  set_cs_timing; int /*<<< orphan*/  transfer_one_message; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  setup; int /*<<< orphan*/  bits_per_word_mask; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_19__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int DEFAULT_SPI_DMA_BUF_LEN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_CHIP_SELECT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SPI_3WIRE ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  SPI_COMMAND1 ; 
 int /*<<< orphan*/  SPI_COMMAND2 ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  SPI_CS_TIMING1 ; 
 int /*<<< orphan*/  SPI_CS_TIMING2 ; 
 int SPI_FIFO_DEPTH ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  SPI_M_S ; 
 int SPI_RX_DUAL ; 
 int SPI_TX_DUAL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int FUNC8 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct tegra_spi_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int FUNC23 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_spi_data*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC26 (TYPE_2__*,int) ; 
 struct tegra_spi_data* FUNC27 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC28 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra_spi_cleanup ; 
 int /*<<< orphan*/  FUNC30 (struct tegra_spi_data*,int) ; 
 int FUNC31 (struct tegra_spi_data*,int) ; 
 int /*<<< orphan*/  tegra_spi_isr ; 
 int /*<<< orphan*/  tegra_spi_isr_thread ; 
 void* FUNC32 (struct tegra_spi_data*,int /*<<< orphan*/ ) ; 
 int FUNC33 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_2__*) ; 
 int /*<<< orphan*/  tegra_spi_set_hw_cs_timing ; 
 int /*<<< orphan*/  tegra_spi_setup ; 
 int /*<<< orphan*/  tegra_spi_transfer_one_message ; 
 int /*<<< orphan*/  FUNC35 (struct tegra_spi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int) ; 

__attribute__((used)) static int FUNC37(struct platform_device *pdev)
{
	struct spi_master	*master;
	struct tegra_spi_data	*tspi;
	struct resource		*r;
	int ret, spi_irq;
	int bus_num;

	master = FUNC26(&pdev->dev, sizeof(*tspi));
	if (!master) {
		FUNC3(&pdev->dev, "master allocation failed\n");
		return -ENOMEM;
	}
	FUNC16(pdev, master);
	tspi = FUNC27(master);

	if (FUNC13(pdev->dev.of_node, "spi-max-frequency",
				 &master->max_speed_hz))
		master->max_speed_hz = 25000000; /* 25MHz */

	/* the spi->mode bits understood by this driver: */
	master->use_gpio_descriptors = true;
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LSB_FIRST |
			    SPI_TX_DUAL | SPI_RX_DUAL | SPI_3WIRE;
	master->bits_per_word_mask = FUNC2(4, 32);
	master->setup = tegra_spi_setup;
	master->cleanup = tegra_spi_cleanup;
	master->transfer_one_message = tegra_spi_transfer_one_message;
	master->set_cs_timing = tegra_spi_set_hw_cs_timing;
	master->num_chipselect = MAX_CHIP_SELECT;
	master->auto_runtime_pm = true;
	bus_num = FUNC11(pdev->dev.of_node, "spi");
	if (bus_num >= 0)
		master->bus_num = bus_num;

	tspi->master = master;
	tspi->dev = &pdev->dev;
	FUNC29(&tspi->lock);

	tspi->soc_data = FUNC12(&pdev->dev);
	if (!tspi->soc_data) {
		FUNC3(&pdev->dev, "unsupported tegra\n");
		ret = -ENODEV;
		goto exit_free_master;
	}

	r = FUNC15(pdev, IORESOURCE_MEM, 0);
	tspi->base = FUNC6(&pdev->dev, r);
	if (FUNC0(tspi->base)) {
		ret = FUNC1(tspi->base);
		goto exit_free_master;
	}
	tspi->phys = r->start;

	spi_irq = FUNC14(pdev, 0);
	tspi->irq = spi_irq;

	tspi->clk = FUNC5(&pdev->dev, "spi");
	if (FUNC0(tspi->clk)) {
		FUNC3(&pdev->dev, "can not get clock\n");
		ret = FUNC1(tspi->clk);
		goto exit_free_master;
	}

	tspi->rst = FUNC7(&pdev->dev, "spi");
	if (FUNC0(tspi->rst)) {
		FUNC3(&pdev->dev, "can not get reset\n");
		ret = FUNC1(tspi->rst);
		goto exit_free_master;
	}

	tspi->max_buf_size = SPI_FIFO_DEPTH << 2;
	tspi->dma_buf_size = DEFAULT_SPI_DMA_BUF_LEN;

	ret = FUNC31(tspi, true);
	if (ret < 0)
		goto exit_free_master;
	ret = FUNC31(tspi, false);
	if (ret < 0)
		goto exit_rx_dma_free;
	tspi->max_buf_size = tspi->dma_buf_size;
	FUNC10(&tspi->tx_dma_complete);
	FUNC10(&tspi->rx_dma_complete);

	FUNC10(&tspi->xfer_completion);

	FUNC18(&pdev->dev);
	if (!FUNC19(&pdev->dev)) {
		ret = FUNC33(&pdev->dev);
		if (ret)
			goto exit_pm_disable;
	}

	ret = FUNC20(&pdev->dev);
	if (ret < 0) {
		FUNC3(&pdev->dev, "pm runtime get failed, e = %d\n", ret);
		goto exit_pm_disable;
	}

	FUNC24(tspi->rst);
	FUNC36(2);
	FUNC25(tspi->rst);
	tspi->def_command1_reg  = SPI_M_S;
	FUNC35(tspi, tspi->def_command1_reg, SPI_COMMAND1);
	tspi->spi_cs_timing1 = FUNC32(tspi, SPI_CS_TIMING1);
	tspi->spi_cs_timing2 = FUNC32(tspi, SPI_CS_TIMING2);
	tspi->def_command2_reg = FUNC32(tspi, SPI_COMMAND2);
	tspi->last_used_cs = master->num_chipselect + 1;
	FUNC21(&pdev->dev);
	ret = FUNC23(tspi->irq, tegra_spi_isr,
				   tegra_spi_isr_thread, IRQF_ONESHOT,
				   FUNC4(&pdev->dev), tspi);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to register ISR for IRQ %d\n",
			tspi->irq);
		goto exit_pm_disable;
	}

	master->dev.of_node = pdev->dev.of_node;
	ret = FUNC8(&pdev->dev, master);
	if (ret < 0) {
		FUNC3(&pdev->dev, "can not register to master err %d\n", ret);
		goto exit_free_irq;
	}
	return ret;

exit_free_irq:
	FUNC9(spi_irq, tspi);
exit_pm_disable:
	FUNC17(&pdev->dev);
	if (!FUNC22(&pdev->dev))
		FUNC34(&pdev->dev);
	FUNC30(tspi, false);
exit_rx_dma_free:
	FUNC30(tspi, true);
exit_free_master:
	FUNC28(master);
	return ret;
}