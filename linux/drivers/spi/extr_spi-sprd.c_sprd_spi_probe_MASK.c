#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct sprd_spi {int src_clk; int /*<<< orphan*/  clk; int /*<<< orphan*/  xfer_completion; TYPE_2__* dev; int /*<<< orphan*/  phy_base; int /*<<< orphan*/  base; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct spi_controller {int mode_bits; int auto_runtime_pm; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  can_dma; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  set_cs; int /*<<< orphan*/  bus_num; TYPE_1__ dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_16__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SPI_3WIRE ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_TX_DUAL ; 
 int /*<<< orphan*/  SPRD_SPI_AUTOSUSPEND_DELAY ; 
 int /*<<< orphan*/  SPRD_SPI_MAX_SPEED_HZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct resource*) ; 
 int FUNC6 (TYPE_2__*,struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 struct spi_controller* FUNC21 (TYPE_2__*,int) ; 
 struct sprd_spi* FUNC22 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC23 (struct spi_controller*) ; 
 int /*<<< orphan*/  sprd_spi_can_dma ; 
 int /*<<< orphan*/  sprd_spi_chipselect ; 
 int FUNC24 (struct platform_device*,struct sprd_spi*) ; 
 int FUNC25 (struct platform_device*,struct sprd_spi*) ; 
 int /*<<< orphan*/  FUNC26 (struct sprd_spi*) ; 
 int FUNC27 (struct platform_device*,struct sprd_spi*) ; 
 int /*<<< orphan*/  sprd_spi_transfer_one ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct spi_controller *sctlr;
	struct resource *res;
	struct sprd_spi *ss;
	int ret;

	pdev->id = FUNC9(pdev->dev.of_node, "spi");
	sctlr = FUNC21(&pdev->dev, sizeof(*ss));
	if (!sctlr)
		return -ENOMEM;

	ss = FUNC22(sctlr);
	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	ss->base = FUNC5(&pdev->dev, res);
	if (FUNC0(ss->base)) {
		ret = FUNC1(ss->base);
		goto free_controller;
	}

	ss->phy_base = res->start;
	ss->dev = &pdev->dev;
	sctlr->dev.of_node = pdev->dev.of_node;
	sctlr->mode_bits = SPI_CPOL | SPI_CPHA | SPI_3WIRE | SPI_TX_DUAL;
	sctlr->bus_num = pdev->id;
	sctlr->set_cs = sprd_spi_chipselect;
	sctlr->transfer_one = sprd_spi_transfer_one;
	sctlr->can_dma = sprd_spi_can_dma;
	sctlr->auto_runtime_pm = true;
	sctlr->max_speed_hz = FUNC8(u32, ss->src_clk >> 1,
				    SPRD_SPI_MAX_SPEED_HZ);

	FUNC7(&ss->xfer_completion);
	FUNC11(pdev, sctlr);
	ret = FUNC24(pdev, ss);
	if (ret)
		goto free_controller;

	ret = FUNC27(pdev, ss);
	if (ret)
		goto free_controller;

	ret = FUNC25(pdev, ss);
	if (ret)
		goto free_controller;

	ret = FUNC3(ss->clk);
	if (ret)
		goto release_dma;

	ret = FUNC18(&pdev->dev);
	if (ret < 0)
		goto disable_clk;

	FUNC19(&pdev->dev,
					 SPRD_SPI_AUTOSUSPEND_DELAY);
	FUNC20(&pdev->dev);
	FUNC13(&pdev->dev);
	ret = FUNC14(&pdev->dev);
	if (ret < 0) {
		FUNC4(&pdev->dev, "failed to resume SPI controller\n");
		goto err_rpm_put;
	}

	ret = FUNC6(&pdev->dev, sctlr);
	if (ret)
		goto err_rpm_put;

	FUNC15(&pdev->dev);
	FUNC16(&pdev->dev);

	return 0;

err_rpm_put:
	FUNC17(&pdev->dev);
	FUNC12(&pdev->dev);
disable_clk:
	FUNC2(ss->clk);
release_dma:
	FUNC26(ss);
free_controller:
	FUNC23(sctlr);

	return ret;
}