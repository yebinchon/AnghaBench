#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct tegra_sflash_data {int irq; int def_command_reg; int /*<<< orphan*/  rst; int /*<<< orphan*/  xfer_completion; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; TYPE_2__* dev; int /*<<< orphan*/  lock; struct spi_master* master; } ;
struct TYPE_17__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int mode_bits; int auto_runtime_pm; int max_speed_hz; TYPE_1__ dev; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  transfer_one_message; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_CHIP_SELECT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_COMMAND ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_SW ; 
 int SPI_M_S ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int FUNC7 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct tegra_sflash_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int FUNC20 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_sflash_data*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC23 (TYPE_2__*,int) ; 
 struct tegra_sflash_data* FUNC24 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC25 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra_sflash_isr ; 
 int /*<<< orphan*/  tegra_sflash_of_match ; 
 int FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  tegra_sflash_transfer_one_message ; 
 int /*<<< orphan*/  FUNC29 (struct tegra_sflash_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 

__attribute__((used)) static int FUNC31(struct platform_device *pdev)
{
	struct spi_master	*master;
	struct tegra_sflash_data	*tsd;
	int ret;
	const struct of_device_id *match;

	match = FUNC10(tegra_sflash_of_match, &pdev->dev);
	if (!match) {
		FUNC2(&pdev->dev, "Error: No device match found\n");
		return -ENODEV;
	}

	master = FUNC23(&pdev->dev, sizeof(*tsd));
	if (!master) {
		FUNC2(&pdev->dev, "master allocation failed\n");
		return -ENOMEM;
	}

	/* the spi->mode bits understood by this driver: */
	master->mode_bits = SPI_CPOL | SPI_CPHA;
	master->transfer_one_message = tegra_sflash_transfer_one_message;
	master->auto_runtime_pm = true;
	master->num_chipselect = MAX_CHIP_SELECT;

	FUNC13(pdev, master);
	tsd = FUNC24(master);
	tsd->master = master;
	tsd->dev = &pdev->dev;
	FUNC26(&tsd->lock);

	if (FUNC11(tsd->dev->of_node, "spi-max-frequency",
				 &master->max_speed_hz))
		master->max_speed_hz = 25000000; /* 25MHz */

	tsd->base = FUNC5(pdev, 0);
	if (FUNC0(tsd->base)) {
		ret = FUNC1(tsd->base);
		goto exit_free_master;
	}

	tsd->irq = FUNC12(pdev, 0);
	ret = FUNC20(tsd->irq, tegra_sflash_isr, 0,
			FUNC3(&pdev->dev), tsd);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to register ISR for IRQ %d\n",
					tsd->irq);
		goto exit_free_master;
	}

	tsd->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(tsd->clk)) {
		FUNC2(&pdev->dev, "can not get clock\n");
		ret = FUNC1(tsd->clk);
		goto exit_free_irq;
	}

	tsd->rst = FUNC6(&pdev->dev, "spi");
	if (FUNC0(tsd->rst)) {
		FUNC2(&pdev->dev, "can not get reset\n");
		ret = FUNC1(tsd->rst);
		goto exit_free_irq;
	}

	FUNC9(&tsd->xfer_completion);
	FUNC15(&pdev->dev);
	if (!FUNC16(&pdev->dev)) {
		ret = FUNC27(&pdev->dev);
		if (ret)
			goto exit_pm_disable;
	}

	ret = FUNC17(&pdev->dev);
	if (ret < 0) {
		FUNC2(&pdev->dev, "pm runtime get failed, e = %d\n", ret);
		goto exit_pm_disable;
	}

	/* Reset controller */
	FUNC21(tsd->rst);
	FUNC30(2);
	FUNC22(tsd->rst);

	tsd->def_command_reg  = SPI_M_S | SPI_CS_SW;
	FUNC29(tsd, tsd->def_command_reg, SPI_COMMAND);
	FUNC18(&pdev->dev);

	master->dev.of_node = pdev->dev.of_node;
	ret = FUNC7(&pdev->dev, master);
	if (ret < 0) {
		FUNC2(&pdev->dev, "can not register to master err %d\n", ret);
		goto exit_pm_disable;
	}
	return ret;

exit_pm_disable:
	FUNC14(&pdev->dev);
	if (!FUNC19(&pdev->dev))
		FUNC28(&pdev->dev);
exit_free_irq:
	FUNC8(tsd->irq, tsd);
exit_free_master:
	FUNC25(master);
	return ret;
}