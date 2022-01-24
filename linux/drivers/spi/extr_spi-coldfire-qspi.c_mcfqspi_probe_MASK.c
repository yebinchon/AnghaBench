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
struct spi_master {int mode_bits; int auto_runtime_pm; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  set_cs; int /*<<< orphan*/  setup; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct mcfqspi_platform_data {scalar_t__ cs_control; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; } ;
struct mcfqspi {scalar_t__ irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  waitq; scalar_t__ cs_control; int /*<<< orphan*/  iobase; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct mcfqspi_platform_data* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mcfqspi*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct mcfqspi*) ; 
 int /*<<< orphan*/  FUNC14 (struct mcfqspi*) ; 
 int /*<<< orphan*/  mcfqspi_irq_handler ; 
 int /*<<< orphan*/  mcfqspi_set_cs ; 
 int /*<<< orphan*/  mcfqspi_setup ; 
 int /*<<< orphan*/  mcfqspi_transfer_one ; 
 scalar_t__ FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 struct spi_master* FUNC19 (int /*<<< orphan*/ *,int) ; 
 struct mcfqspi* FUNC20 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC21 (struct spi_master*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct spi_master *master;
	struct mcfqspi *mcfqspi;
	struct mcfqspi_platform_data *pdata;
	int status;

	pdata = FUNC6(&pdev->dev);
	if (!pdata) {
		FUNC5(&pdev->dev, "platform data is missing\n");
		return -ENOENT;
	}

	if (!pdata->cs_control) {
		FUNC5(&pdev->dev, "pdata->cs_control is NULL\n");
		return -EINVAL;
	}

	master = FUNC19(&pdev->dev, sizeof(*mcfqspi));
	if (master == NULL) {
		FUNC5(&pdev->dev, "spi_alloc_master failed\n");
		return -ENOMEM;
	}

	mcfqspi = FUNC20(master);

	mcfqspi->iobase = FUNC9(pdev, 0);
	if (FUNC0(mcfqspi->iobase)) {
		status = FUNC1(mcfqspi->iobase);
		goto fail0;
	}

	mcfqspi->irq = FUNC15(pdev, 0);
	if (mcfqspi->irq < 0) {
		FUNC5(&pdev->dev, "platform_get_irq failed\n");
		status = -ENXIO;
		goto fail0;
	}

	status = FUNC10(&pdev->dev, mcfqspi->irq, mcfqspi_irq_handler,
				0, pdev->name, mcfqspi);
	if (status) {
		FUNC5(&pdev->dev, "request_irq failed\n");
		goto fail0;
	}

	mcfqspi->clk = FUNC8(&pdev->dev, "qspi_clk");
	if (FUNC0(mcfqspi->clk)) {
		FUNC5(&pdev->dev, "clk_get failed\n");
		status = FUNC1(mcfqspi->clk);
		goto fail0;
	}
	FUNC4(mcfqspi->clk);

	master->bus_num = pdata->bus_num;
	master->num_chipselect = pdata->num_chipselect;

	mcfqspi->cs_control = pdata->cs_control;
	status = FUNC13(mcfqspi);
	if (status) {
		FUNC5(&pdev->dev, "error initializing cs_control\n");
		goto fail1;
	}

	FUNC12(&mcfqspi->waitq);

	master->mode_bits = SPI_CS_HIGH | SPI_CPOL | SPI_CPHA;
	master->bits_per_word_mask = FUNC2(8, 16);
	master->setup = mcfqspi_setup;
	master->set_cs = mcfqspi_set_cs;
	master->transfer_one = mcfqspi_transfer_one;
	master->auto_runtime_pm = true;

	FUNC16(pdev, master);
	FUNC18(&pdev->dev);

	status = FUNC11(&pdev->dev, master);
	if (status) {
		FUNC5(&pdev->dev, "spi_register_master failed\n");
		goto fail2;
	}

	FUNC7(&pdev->dev, "Coldfire QSPI bus driver\n");

	return 0;

fail2:
	FUNC17(&pdev->dev);
	FUNC14(mcfqspi);
fail1:
	FUNC3(mcfqspi->clk);
fail0:
	FUNC21(master);

	FUNC5(&pdev->dev, "Coldfire QSPI probe failed\n");

	return status;
}