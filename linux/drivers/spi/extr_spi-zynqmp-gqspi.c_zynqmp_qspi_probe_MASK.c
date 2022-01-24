#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zynqmp_qspi {scalar_t__ irq; void* pclk; void* refclk; struct device* dev; void* regs; } ;
struct TYPE_2__ {struct TYPE_2__* parent; int /*<<< orphan*/  of_node; } ;
struct spi_master {int max_speed_hz; int mode_bits; TYPE_1__ dev; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  unprepare_transfer_hardware; int /*<<< orphan*/  prepare_transfer_hardware; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  set_cs; int /*<<< orphan*/  setup; int /*<<< orphan*/  num_chipselect; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GQSPI_DEFAULT_NUM_CS ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  SPI_AUTOSUSPEND_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 void* FUNC7 (struct device*,char*) ; 
 void* FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_master*) ; 
 void* eemi_ops ; 
 scalar_t__ FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 struct spi_master* FUNC20 (struct device*,int) ; 
 struct zynqmp_qspi* FUNC21 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC22 (struct spi_master*) ; 
 int FUNC23 (struct spi_master*) ; 
 void* FUNC24 () ; 
 int /*<<< orphan*/  zynqmp_prepare_transfer_hardware ; 
 int /*<<< orphan*/  zynqmp_qspi_chipselect ; 
 int /*<<< orphan*/  FUNC25 (struct zynqmp_qspi*) ; 
 int /*<<< orphan*/  zynqmp_qspi_irq ; 
 int /*<<< orphan*/  zynqmp_qspi_setup ; 
 int /*<<< orphan*/  zynqmp_qspi_start_transfer ; 
 int /*<<< orphan*/  zynqmp_unprepare_transfer_hardware ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	int ret = 0;
	struct spi_master *master;
	struct zynqmp_qspi *xqspi;
	struct device *dev = &pdev->dev;

	eemi_ops = FUNC24();
	if (FUNC0(eemi_ops))
		return FUNC1(eemi_ops);

	master = FUNC20(&pdev->dev, sizeof(*xqspi));
	if (!master)
		return -ENOMEM;

	xqspi = FUNC21(master);
	master->dev.of_node = pdev->dev.of_node;
	FUNC11(pdev, master);

	xqspi->regs = FUNC8(pdev, 0);
	if (FUNC0(xqspi->regs)) {
		ret = FUNC1(xqspi->regs);
		goto remove_master;
	}

	xqspi->dev = dev;
	xqspi->pclk = FUNC7(&pdev->dev, "pclk");
	if (FUNC0(xqspi->pclk)) {
		FUNC6(dev, "pclk clock not found.\n");
		ret = FUNC1(xqspi->pclk);
		goto remove_master;
	}

	ret = FUNC5(xqspi->pclk);
	if (ret) {
		FUNC6(dev, "Unable to enable APB clock.\n");
		goto remove_master;
	}

	xqspi->refclk = FUNC7(&pdev->dev, "ref_clk");
	if (FUNC0(xqspi->refclk)) {
		FUNC6(dev, "ref_clk clock not found.\n");
		ret = FUNC1(xqspi->refclk);
		goto clk_dis_pclk;
	}

	ret = FUNC5(xqspi->refclk);
	if (ret) {
		FUNC6(dev, "Unable to enable device clock.\n");
		goto clk_dis_pclk;
	}

	FUNC19(&pdev->dev);
	FUNC17(&pdev->dev, SPI_AUTOSUSPEND_TIMEOUT);
	FUNC16(&pdev->dev);
	FUNC13(&pdev->dev);
	/* QSPI controller initializations */
	FUNC25(xqspi);

	FUNC14(&pdev->dev);
	FUNC15(&pdev->dev);
	xqspi->irq = FUNC10(pdev, 0);
	if (xqspi->irq <= 0) {
		ret = -ENXIO;
		goto clk_dis_all;
	}
	ret = FUNC9(&pdev->dev, xqspi->irq, zynqmp_qspi_irq,
			       0, pdev->name, master);
	if (ret != 0) {
		ret = -ENXIO;
		FUNC6(dev, "request_irq failed\n");
		goto clk_dis_all;
	}

	master->num_chipselect = GQSPI_DEFAULT_NUM_CS;

	master->setup = zynqmp_qspi_setup;
	master->set_cs = zynqmp_qspi_chipselect;
	master->transfer_one = zynqmp_qspi_start_transfer;
	master->prepare_transfer_hardware = zynqmp_prepare_transfer_hardware;
	master->unprepare_transfer_hardware =
					zynqmp_unprepare_transfer_hardware;
	master->max_speed_hz = FUNC4(xqspi->refclk) / 2;
	master->bits_per_word_mask = FUNC2(8);
	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_RX_DUAL | SPI_RX_QUAD |
			    SPI_TX_DUAL | SPI_TX_QUAD;

	if (master->dev.parent == NULL)
		master->dev.parent = &master->dev;

	ret = FUNC23(master);
	if (ret)
		goto clk_dis_all;

	return 0;

clk_dis_all:
	FUNC18(&pdev->dev);
	FUNC12(&pdev->dev);
	FUNC3(xqspi->refclk);
clk_dis_pclk:
	FUNC3(xqspi->pclk);
remove_master:
	FUNC22(master);

	return ret;
}