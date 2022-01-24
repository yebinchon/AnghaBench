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
struct sun4i_spi {int /*<<< orphan*/  done; void* mclk; void* hclk; struct spi_master* master; void* base_addr; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int max_speed_hz; int min_speed_hz; int num_chipselect; int mode_bits; int auto_runtime_pm; int /*<<< orphan*/  max_transfer_size; TYPE_1__ dev; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  set_cs; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 void* FUNC4 (TYPE_2__*,char*) ; 
 void* FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sun4i_spi*) ; 
 int FUNC7 (TYPE_2__*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 struct spi_master* FUNC15 (TYPE_2__*,int) ; 
 struct sun4i_spi* FUNC16 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC17 (struct spi_master*) ; 
 int /*<<< orphan*/  sun4i_spi_handler ; 
 int /*<<< orphan*/  sun4i_spi_max_transfer_size ; 
 int FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  sun4i_spi_set_cs ; 
 int /*<<< orphan*/  sun4i_spi_transfer_one ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct spi_master *master;
	struct sun4i_spi *sspi;
	int ret = 0, irq;

	master = FUNC15(&pdev->dev, sizeof(struct sun4i_spi));
	if (!master) {
		FUNC3(&pdev->dev, "Unable to allocate SPI Master\n");
		return -ENOMEM;
	}

	FUNC10(pdev, master);
	sspi = FUNC16(master);

	sspi->base_addr = FUNC5(pdev, 0);
	if (FUNC0(sspi->base_addr)) {
		ret = FUNC1(sspi->base_addr);
		goto err_free_master;
	}

	irq = FUNC9(pdev, 0);
	if (irq < 0) {
		ret = -ENXIO;
		goto err_free_master;
	}

	ret = FUNC6(&pdev->dev, irq, sun4i_spi_handler,
			       0, "sun4i-spi", sspi);
	if (ret) {
		FUNC3(&pdev->dev, "Cannot request IRQ\n");
		goto err_free_master;
	}

	sspi->master = master;
	master->max_speed_hz = 100 * 1000 * 1000;
	master->min_speed_hz = 3 * 1000;
	master->set_cs = sun4i_spi_set_cs;
	master->transfer_one = sun4i_spi_transfer_one;
	master->num_chipselect = 4;
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LSB_FIRST;
	master->bits_per_word_mask = FUNC2(8);
	master->dev.of_node = pdev->dev.of_node;
	master->auto_runtime_pm = true;
	master->max_transfer_size = sun4i_spi_max_transfer_size;

	sspi->hclk = FUNC4(&pdev->dev, "ahb");
	if (FUNC0(sspi->hclk)) {
		FUNC3(&pdev->dev, "Unable to acquire AHB clock\n");
		ret = FUNC1(sspi->hclk);
		goto err_free_master;
	}

	sspi->mclk = FUNC4(&pdev->dev, "mod");
	if (FUNC0(sspi->mclk)) {
		FUNC3(&pdev->dev, "Unable to acquire module clock\n");
		ret = FUNC1(sspi->mclk);
		goto err_free_master;
	}

	FUNC8(&sspi->done);

	/*
	 * This wake-up/shutdown pattern is to be able to have the
	 * device woken up, even if runtime_pm is disabled
	 */
	ret = FUNC18(&pdev->dev);
	if (ret) {
		FUNC3(&pdev->dev, "Couldn't resume the device\n");
		goto err_free_master;
	}

	FUNC14(&pdev->dev);
	FUNC12(&pdev->dev);
	FUNC13(&pdev->dev);

	ret = FUNC7(&pdev->dev, master);
	if (ret) {
		FUNC3(&pdev->dev, "cannot register SPI master\n");
		goto err_pm_disable;
	}

	return 0;

err_pm_disable:
	FUNC11(&pdev->dev);
	FUNC19(&pdev->dev);
err_free_master:
	FUNC17(master);
	return ret;
}