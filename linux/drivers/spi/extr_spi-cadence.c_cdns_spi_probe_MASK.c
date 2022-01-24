#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct spi_master {int use_gpio_descriptors; int auto_runtime_pm; int mode_bits; int max_speed_hz; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  set_cs; int /*<<< orphan*/  unprepare_transfer_hardware; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  prepare_transfer_hardware; scalar_t__ num_chipselect; TYPE_1__ dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct cdns_spi {int speed_hz; void* pclk; void* ref_clk; scalar_t__ is_decoded_cs; void* regs; } ;

/* Variables and functions */
 scalar_t__ CDNS_SPI_DEFAULT_NUM_CS ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  SPI_AUTOSUSPEND_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int /*<<< orphan*/  cdns_prepare_message ; 
 int /*<<< orphan*/  cdns_prepare_transfer_hardware ; 
 int /*<<< orphan*/  cdns_spi_chipselect ; 
 int /*<<< orphan*/  FUNC3 (struct cdns_spi*) ; 
 int /*<<< orphan*/  cdns_spi_irq ; 
 int /*<<< orphan*/  cdns_transfer_one ; 
 int /*<<< orphan*/  cdns_unprepare_transfer_hardware ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 void* FUNC8 (TYPE_2__*,char*) ; 
 void* FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_master*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 struct spi_master* FUNC20 (TYPE_2__*,int) ; 
 struct cdns_spi* FUNC21 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC22 (struct spi_master*) ; 
 int FUNC23 (struct spi_master*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	int ret = 0, irq;
	struct spi_master *master;
	struct cdns_spi *xspi;
	u32 num_cs;

	master = FUNC20(&pdev->dev, sizeof(*xspi));
	if (!master)
		return -ENOMEM;

	xspi = FUNC21(master);
	master->dev.of_node = pdev->dev.of_node;
	FUNC13(pdev, master);

	xspi->regs = FUNC9(pdev, 0);
	if (FUNC0(xspi->regs)) {
		ret = FUNC1(xspi->regs);
		goto remove_master;
	}

	xspi->pclk = FUNC8(&pdev->dev, "pclk");
	if (FUNC0(xspi->pclk)) {
		FUNC7(&pdev->dev, "pclk clock not found.\n");
		ret = FUNC1(xspi->pclk);
		goto remove_master;
	}

	xspi->ref_clk = FUNC8(&pdev->dev, "ref_clk");
	if (FUNC0(xspi->ref_clk)) {
		FUNC7(&pdev->dev, "ref_clk clock not found.\n");
		ret = FUNC1(xspi->ref_clk);
		goto remove_master;
	}

	ret = FUNC6(xspi->pclk);
	if (ret) {
		FUNC7(&pdev->dev, "Unable to enable APB clock.\n");
		goto remove_master;
	}

	ret = FUNC6(xspi->ref_clk);
	if (ret) {
		FUNC7(&pdev->dev, "Unable to enable device clock.\n");
		goto clk_dis_apb;
	}

	ret = FUNC11(pdev->dev.of_node, "num-cs", &num_cs);
	if (ret < 0)
		master->num_chipselect = CDNS_SPI_DEFAULT_NUM_CS;
	else
		master->num_chipselect = num_cs;

	ret = FUNC11(pdev->dev.of_node, "is-decoded-cs",
				   &xspi->is_decoded_cs);
	if (ret < 0)
		xspi->is_decoded_cs = 0;

	/* SPI controller initializations */
	FUNC3(xspi);

	FUNC16(&pdev->dev);
	FUNC15(&pdev->dev);
	FUNC19(&pdev->dev);
	FUNC17(&pdev->dev, SPI_AUTOSUSPEND_TIMEOUT);

	irq = FUNC12(pdev, 0);
	if (irq <= 0) {
		ret = -ENXIO;
		goto clk_dis_all;
	}

	ret = FUNC10(&pdev->dev, irq, cdns_spi_irq,
			       0, pdev->name, master);
	if (ret != 0) {
		ret = -ENXIO;
		FUNC7(&pdev->dev, "request_irq failed\n");
		goto clk_dis_all;
	}

	master->use_gpio_descriptors = true;
	master->prepare_transfer_hardware = cdns_prepare_transfer_hardware;
	master->prepare_message = cdns_prepare_message;
	master->transfer_one = cdns_transfer_one;
	master->unprepare_transfer_hardware = cdns_unprepare_transfer_hardware;
	master->set_cs = cdns_spi_chipselect;
	master->auto_runtime_pm = true;
	master->mode_bits = SPI_CPOL | SPI_CPHA;

	/* Set to default valid value */
	master->max_speed_hz = FUNC5(xspi->ref_clk) / 4;
	xspi->speed_hz = master->max_speed_hz;

	master->bits_per_word_mask = FUNC2(8);

	ret = FUNC23(master);
	if (ret) {
		FUNC7(&pdev->dev, "spi_register_master failed\n");
		goto clk_dis_all;
	}

	return ret;

clk_dis_all:
	FUNC18(&pdev->dev);
	FUNC14(&pdev->dev);
	FUNC4(xspi->ref_clk);
clk_dis_apb:
	FUNC4(xspi->pclk);
remove_master:
	FUNC22(master);
	return ret;
}