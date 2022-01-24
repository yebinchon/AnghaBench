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
struct spi_master {int use_gpio_descriptors; int mode_bits; int max_speed_hz; int min_speed_hz; scalar_t__ num_chipselect; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  bus_num; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  unprepare_transfer_hardware; int /*<<< orphan*/  prepare_transfer_hardware; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct ep93xx_spi_info {scalar_t__ use_dma; } ;
struct ep93xx_spi {scalar_t__ mmio; scalar_t__ sspdr_phys; scalar_t__ clk; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 scalar_t__ SSPCR1 ; 
 scalar_t__ SSPDR ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct ep93xx_spi_info* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct resource*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct spi_master*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct spi_master*) ; 
 int /*<<< orphan*/  ep93xx_spi_interrupt ; 
 int /*<<< orphan*/  ep93xx_spi_prepare_hardware ; 
 int /*<<< orphan*/  ep93xx_spi_prepare_message ; 
 int /*<<< orphan*/  FUNC12 (struct ep93xx_spi*) ; 
 scalar_t__ FUNC13 (struct ep93xx_spi*) ; 
 int /*<<< orphan*/  ep93xx_spi_transfer_one ; 
 int /*<<< orphan*/  ep93xx_spi_unprepare_hardware ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct spi_master*) ; 
 struct spi_master* FUNC17 (int /*<<< orphan*/ *,int) ; 
 struct ep93xx_spi* FUNC18 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC19 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct spi_master *master;
	struct ep93xx_spi_info *info;
	struct ep93xx_spi *espi;
	struct resource *res;
	int irq;
	int error;

	info = FUNC5(&pdev->dev);
	if (!info) {
		FUNC4(&pdev->dev, "missing platform data\n");
		return -EINVAL;
	}

	irq = FUNC14(pdev, 0);
	if (irq < 0)
		return -EBUSY;

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC4(&pdev->dev, "unable to get iomem resource\n");
		return -ENODEV;
	}

	master = FUNC17(&pdev->dev, sizeof(*espi));
	if (!master)
		return -ENOMEM;

	master->use_gpio_descriptors = true;
	master->prepare_transfer_hardware = ep93xx_spi_prepare_hardware;
	master->unprepare_transfer_hardware = ep93xx_spi_unprepare_hardware;
	master->prepare_message = ep93xx_spi_prepare_message;
	master->transfer_one = ep93xx_spi_transfer_one;
	master->bus_num = pdev->id;
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH;
	master->bits_per_word_mask = FUNC2(4, 16);
	/*
	 * The SPI core will count the number of GPIO descriptors to figure
	 * out the number of chip selects available on the platform.
	 */
	master->num_chipselect = 0;

	FUNC16(pdev, master);

	espi = FUNC18(master);

	espi->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC0(espi->clk)) {
		FUNC4(&pdev->dev, "unable to get spi clock\n");
		error = FUNC1(espi->clk);
		goto fail_release_master;
	}

	/*
	 * Calculate maximum and minimum supported clock rates
	 * for the controller.
	 */
	master->max_speed_hz = FUNC3(espi->clk) / 2;
	master->min_speed_hz = FUNC3(espi->clk) / (254 * 256);

	espi->sspdr_phys = res->start + SSPDR;

	espi->mmio = FUNC9(&pdev->dev, res);
	if (FUNC0(espi->mmio)) {
		error = FUNC1(espi->mmio);
		goto fail_release_master;
	}

	error = FUNC10(&pdev->dev, irq, ep93xx_spi_interrupt,
				0, "ep93xx-spi", master);
	if (error) {
		FUNC4(&pdev->dev, "failed to request irq\n");
		goto fail_release_master;
	}

	if (info->use_dma && FUNC13(espi))
		FUNC7(&pdev->dev, "DMA setup failed. Falling back to PIO\n");

	/* make sure that the hardware is disabled */
	FUNC20(0, espi->mmio + SSPCR1);

	error = FUNC11(&pdev->dev, master);
	if (error) {
		FUNC4(&pdev->dev, "failed to register SPI master\n");
		goto fail_free_dma;
	}

	FUNC6(&pdev->dev, "EP93xx SPI Controller at 0x%08lx irq %d\n",
		 (unsigned long)res->start, irq);

	return 0;

fail_free_dma:
	FUNC12(espi);
fail_release_master:
	FUNC19(master);

	return error;
}