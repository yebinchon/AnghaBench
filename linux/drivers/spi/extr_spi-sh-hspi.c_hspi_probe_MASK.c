#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct spi_controller {int mode_bits; int auto_runtime_pm; int /*<<< orphan*/  bits_per_word_mask; int /*<<< orphan*/  transfer_one_message; TYPE_1__ dev; int /*<<< orphan*/  bus_num; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  id; } ;
struct hspi_priv {int /*<<< orphan*/  addr; TYPE_2__* dev; struct clk* clk; struct spi_controller* ctlr; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 struct clk* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,struct spi_controller*) ; 
 int /*<<< orphan*/  hspi_transfer_one_message ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct hspi_priv*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 struct spi_controller* FUNC12 (TYPE_2__*,int) ; 
 struct hspi_priv* FUNC13 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct resource *res;
	struct spi_controller *ctlr;
	struct hspi_priv *hspi;
	struct clk *clk;
	int ret;

	/* get base addr */
	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC4(&pdev->dev, "invalid resource\n");
		return -EINVAL;
	}

	ctlr = FUNC12(&pdev->dev, sizeof(*hspi));
	if (!ctlr)
		return -ENOMEM;

	clk = FUNC2(&pdev->dev, NULL);
	if (FUNC0(clk)) {
		FUNC4(&pdev->dev, "couldn't get clock\n");
		ret = -EINVAL;
		goto error0;
	}

	hspi = FUNC13(ctlr);
	FUNC8(pdev, hspi);

	/* init hspi */
	hspi->ctlr	= ctlr;
	hspi->dev	= &pdev->dev;
	hspi->clk	= clk;
	hspi->addr	= FUNC5(hspi->dev,
				       res->start, FUNC11(res));
	if (!hspi->addr) {
		ret = -ENOMEM;
		goto error1;
	}

	FUNC10(&pdev->dev);

	ctlr->bus_num = pdev->id;
	ctlr->mode_bits	= SPI_CPOL | SPI_CPHA;
	ctlr->dev.of_node = pdev->dev.of_node;
	ctlr->auto_runtime_pm = true;
	ctlr->transfer_one_message = hspi_transfer_one_message;
	ctlr->bits_per_word_mask = FUNC1(8);

	ret = FUNC6(&pdev->dev, ctlr);
	if (ret < 0) {
		FUNC4(&pdev->dev, "devm_spi_register_controller error.\n");
		goto error2;
	}

	return 0;

 error2:
	FUNC9(&pdev->dev);
 error1:
	FUNC3(clk);
 error0:
	FUNC14(ctlr);

	return ret;
}