#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;
struct spi_controller {int auto_runtime_pm; int mode_bits; int /*<<< orphan*/  slave_abort; int /*<<< orphan*/  setup; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  prepare_message; TYPE_1__ dev; } ;
struct resource {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mtk_spi_slave {int /*<<< orphan*/  spi_clk; int /*<<< orphan*/  base; TYPE_2__* dev; int /*<<< orphan*/  xfer_done; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_LSB_FIRST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct resource*) ; 
 int FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_controller*) ; 
 int FUNC9 (TYPE_2__*,struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_slave_abort ; 
 int /*<<< orphan*/  mtk_spi_slave_interrupt ; 
 int /*<<< orphan*/  mtk_spi_slave_prepare_message ; 
 int /*<<< orphan*/  mtk_spi_slave_setup ; 
 int /*<<< orphan*/  mtk_spi_slave_transfer_one ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 struct spi_controller* FUNC16 (TYPE_2__*,int) ; 
 struct mtk_spi_slave* FUNC17 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC18 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct spi_controller *ctlr;
	struct mtk_spi_slave *mdata;
	struct resource *res;
	int irq, ret;

	ctlr = FUNC16(&pdev->dev, sizeof(*mdata));
	if (!ctlr) {
		FUNC4(&pdev->dev, "failed to alloc spi slave\n");
		return -ENOMEM;
	}

	ctlr->auto_runtime_pm = true;
	ctlr->dev.of_node = pdev->dev.of_node;
	ctlr->mode_bits = SPI_CPOL | SPI_CPHA;
	ctlr->mode_bits |= SPI_LSB_FIRST;

	ctlr->prepare_message = mtk_spi_slave_prepare_message;
	ctlr->transfer_one = mtk_spi_slave_transfer_one;
	ctlr->setup = mtk_spi_slave_setup;
	ctlr->slave_abort = mtk_slave_abort;

	mdata = FUNC17(ctlr);

	FUNC13(pdev, ctlr);

	FUNC10(&mdata->xfer_done);

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		ret = -ENODEV;
		FUNC4(&pdev->dev, "failed to determine base address\n");
		goto err_put_ctlr;
	}

	mdata->dev = &pdev->dev;

	mdata->base = FUNC7(&pdev->dev, res);
	if (FUNC0(mdata->base)) {
		ret = FUNC1(mdata->base);
		goto err_put_ctlr;
	}

	irq = FUNC11(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto err_put_ctlr;
	}

	ret = FUNC8(&pdev->dev, irq, mtk_spi_slave_interrupt,
			       IRQF_TRIGGER_NONE, FUNC5(&pdev->dev), ctlr);
	if (ret) {
		FUNC4(&pdev->dev, "failed to register irq (%d)\n", ret);
		goto err_put_ctlr;
	}

	mdata->spi_clk = FUNC6(&pdev->dev, "spi");
	if (FUNC0(mdata->spi_clk)) {
		ret = FUNC1(mdata->spi_clk);
		FUNC4(&pdev->dev, "failed to get spi-clk: %d\n", ret);
		goto err_put_ctlr;
	}

	ret = FUNC3(mdata->spi_clk);
	if (ret < 0) {
		FUNC4(&pdev->dev, "failed to enable spi_clk (%d)\n", ret);
		goto err_put_ctlr;
	}

	FUNC15(&pdev->dev);

	ret = FUNC9(&pdev->dev, ctlr);
	if (ret) {
		FUNC4(&pdev->dev,
			"failed to register slave controller(%d)\n", ret);
		FUNC2(mdata->spi_clk);
		goto err_disable_runtime_pm;
	}

	FUNC2(mdata->spi_clk);

	return 0;

err_disable_runtime_pm:
	FUNC14(&pdev->dev);
err_put_ctlr:
	FUNC18(ctlr);

	return ret;
}