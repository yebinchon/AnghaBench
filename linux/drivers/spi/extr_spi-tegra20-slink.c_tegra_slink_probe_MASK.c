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
struct tegra_slink_data {int irq; int max_buf_size; int dma_buf_size; int /*<<< orphan*/  clk; int /*<<< orphan*/  def_command2_reg; int /*<<< orphan*/  def_command_reg; int /*<<< orphan*/  xfer_completion; int /*<<< orphan*/  rx_dma_complete; int /*<<< orphan*/  tx_dma_complete; int /*<<< orphan*/  rst; int /*<<< orphan*/  base; int /*<<< orphan*/  phys; TYPE_2__* dev; int /*<<< orphan*/  lock; struct tegra_slink_chip_data const* chip_data; struct spi_master* master; } ;
struct tegra_slink_chip_data {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int mode_bits; int auto_runtime_pm; int max_speed_hz; TYPE_1__ dev; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  unprepare_message; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  setup; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_19__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {struct tegra_slink_chip_data* data; } ;

/* Variables and functions */
 int DEFAULT_SPI_DMA_BUF_LEN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_CHIP_SELECT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLINK_COMMAND ; 
 int /*<<< orphan*/  SLINK_COMMAND2 ; 
 int /*<<< orphan*/  SLINK_CS_ACTIVE_BETWEEN ; 
 int SLINK_FIFO_DEPTH ; 
 int /*<<< orphan*/  SLINK_M_S ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int FUNC10 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC11 (int,struct tegra_slink_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC13 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int FUNC24 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_slink_data*) ; 
 struct spi_master* FUNC25 (TYPE_2__*,int) ; 
 struct tegra_slink_data* FUNC26 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC27 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct tegra_slink_data*,int) ; 
 int FUNC30 (struct tegra_slink_data*,int) ; 
 int /*<<< orphan*/  tegra_slink_isr ; 
 int /*<<< orphan*/  tegra_slink_isr_thread ; 
 int /*<<< orphan*/  tegra_slink_of_match ; 
 int /*<<< orphan*/  tegra_slink_prepare_message ; 
 int FUNC31 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*) ; 
 int /*<<< orphan*/  tegra_slink_setup ; 
 int /*<<< orphan*/  tegra_slink_transfer_one ; 
 int /*<<< orphan*/  tegra_slink_unprepare_message ; 
 int /*<<< orphan*/  FUNC33 (struct tegra_slink_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC34(struct platform_device *pdev)
{
	struct spi_master	*master;
	struct tegra_slink_data	*tspi;
	struct resource		*r;
	int ret, spi_irq;
	const struct tegra_slink_chip_data *cdata = NULL;
	const struct of_device_id *match;

	match = FUNC13(tegra_slink_of_match, &pdev->dev);
	if (!match) {
		FUNC5(&pdev->dev, "Error: No device match found\n");
		return -ENODEV;
	}
	cdata = match->data;

	master = FUNC25(&pdev->dev, sizeof(*tspi));
	if (!master) {
		FUNC5(&pdev->dev, "master allocation failed\n");
		return -ENOMEM;
	}

	/* the spi->mode bits understood by this driver: */
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH;
	master->setup = tegra_slink_setup;
	master->prepare_message = tegra_slink_prepare_message;
	master->transfer_one = tegra_slink_transfer_one;
	master->unprepare_message = tegra_slink_unprepare_message;
	master->auto_runtime_pm = true;
	master->num_chipselect = MAX_CHIP_SELECT;

	FUNC17(pdev, master);
	tspi = FUNC26(master);
	tspi->master = master;
	tspi->dev = &pdev->dev;
	tspi->chip_data = cdata;
	FUNC28(&tspi->lock);

	if (FUNC14(tspi->dev->of_node, "spi-max-frequency",
				 &master->max_speed_hz))
		master->max_speed_hz = 25000000; /* 25MHz */

	r = FUNC16(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		FUNC5(&pdev->dev, "No IO memory resource\n");
		ret = -ENODEV;
		goto exit_free_master;
	}
	tspi->phys = r->start;
	tspi->base = FUNC8(&pdev->dev, r);
	if (FUNC0(tspi->base)) {
		ret = FUNC1(tspi->base);
		goto exit_free_master;
	}

	/* disabled clock may cause interrupt storm upon request */
	tspi->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC0(tspi->clk)) {
		ret = FUNC1(tspi->clk);
		FUNC5(&pdev->dev, "Can not get clock %d\n", ret);
		goto exit_free_master;
	}
	ret = FUNC4(tspi->clk);
	if (ret < 0) {
		FUNC5(&pdev->dev, "Clock prepare failed %d\n", ret);
		goto exit_free_master;
	}
	ret = FUNC3(tspi->clk);
	if (ret < 0) {
		FUNC5(&pdev->dev, "Clock enable failed %d\n", ret);
		goto exit_free_master;
	}

	spi_irq = FUNC15(pdev, 0);
	tspi->irq = spi_irq;
	ret = FUNC24(tspi->irq, tegra_slink_isr,
			tegra_slink_isr_thread, IRQF_ONESHOT,
			FUNC6(&pdev->dev), tspi);
	if (ret < 0) {
		FUNC5(&pdev->dev, "Failed to register ISR for IRQ %d\n",
					tspi->irq);
		goto exit_clk_disable;
	}

	tspi->rst = FUNC9(&pdev->dev, "spi");
	if (FUNC0(tspi->rst)) {
		FUNC5(&pdev->dev, "can not get reset\n");
		ret = FUNC1(tspi->rst);
		goto exit_free_irq;
	}

	tspi->max_buf_size = SLINK_FIFO_DEPTH << 2;
	tspi->dma_buf_size = DEFAULT_SPI_DMA_BUF_LEN;

	ret = FUNC30(tspi, true);
	if (ret < 0)
		goto exit_free_irq;
	ret = FUNC30(tspi, false);
	if (ret < 0)
		goto exit_rx_dma_free;
	tspi->max_buf_size = tspi->dma_buf_size;
	FUNC12(&tspi->tx_dma_complete);
	FUNC12(&tspi->rx_dma_complete);

	FUNC12(&tspi->xfer_completion);

	FUNC19(&pdev->dev);
	if (!FUNC20(&pdev->dev)) {
		ret = FUNC31(&pdev->dev);
		if (ret)
			goto exit_pm_disable;
	}

	ret = FUNC21(&pdev->dev);
	if (ret < 0) {
		FUNC5(&pdev->dev, "pm runtime get failed, e = %d\n", ret);
		goto exit_pm_disable;
	}
	tspi->def_command_reg  = SLINK_M_S;
	tspi->def_command2_reg = SLINK_CS_ACTIVE_BETWEEN;
	FUNC33(tspi, tspi->def_command_reg, SLINK_COMMAND);
	FUNC33(tspi, tspi->def_command2_reg, SLINK_COMMAND2);
	FUNC22(&pdev->dev);

	master->dev.of_node = pdev->dev.of_node;
	ret = FUNC10(&pdev->dev, master);
	if (ret < 0) {
		FUNC5(&pdev->dev, "can not register to master err %d\n", ret);
		goto exit_pm_disable;
	}
	return ret;

exit_pm_disable:
	FUNC18(&pdev->dev);
	if (!FUNC23(&pdev->dev))
		FUNC32(&pdev->dev);
	FUNC29(tspi, false);
exit_rx_dma_free:
	FUNC29(tspi, true);
exit_free_irq:
	FUNC11(spi_irq, tspi);
exit_clk_disable:
	FUNC2(tspi->clk);
exit_free_master:
	FUNC27(master);
	return ret;
}