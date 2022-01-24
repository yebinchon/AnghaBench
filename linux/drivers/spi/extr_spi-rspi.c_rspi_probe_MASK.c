#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct spi_ops {int /*<<< orphan*/  flags; int /*<<< orphan*/  mode_bits; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  set_config_register; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct spi_controller {int num_chipselect; int auto_runtime_pm; TYPE_2__ dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  mode_bits; int /*<<< orphan*/  unprepare_message; int /*<<< orphan*/  prepare_message; int /*<<< orphan*/  transfer_one; int /*<<< orphan*/  bus_num; } ;
struct rspi_plat_data {int num_chipselect; } ;
struct rspi_data {int rx_irq; int tx_irq; int /*<<< orphan*/  wait; int /*<<< orphan*/  clk; int /*<<< orphan*/  addr; struct spi_controller* ctlr; struct spi_ops const* ops; } ;
struct resource {int dummy; } ;
struct TYPE_19__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  id; TYPE_1__* id_entry; } ;
struct TYPE_17__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 struct rspi_plat_data* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct resource*) ; 
 int FUNC8 (TYPE_3__*,struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct spi_ops* FUNC10 (TYPE_3__*) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct platform_device*,char*) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct rspi_data*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  rspi_irq_mux ; 
 int /*<<< orphan*/  rspi_irq_rx ; 
 int /*<<< orphan*/  rspi_irq_tx ; 
 int FUNC17 (TYPE_3__*,struct spi_controller*) ; 
 int /*<<< orphan*/  rspi_prepare_message ; 
 int /*<<< orphan*/  FUNC18 (struct spi_controller*) ; 
 int FUNC19 (TYPE_3__*,struct spi_controller*,struct resource*) ; 
 int FUNC20 (TYPE_3__*,int,int /*<<< orphan*/ ,char*,struct rspi_data*) ; 
 int /*<<< orphan*/  rspi_unprepare_message ; 
 struct spi_controller* FUNC21 (TYPE_3__*,int) ; 
 struct rspi_data* FUNC22 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC23 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct resource *res;
	struct spi_controller *ctlr;
	struct rspi_data *rspi;
	int ret;
	const struct rspi_plat_data *rspi_pd;
	const struct spi_ops *ops;

	ctlr = FUNC21(&pdev->dev, sizeof(struct rspi_data));
	if (ctlr == NULL)
		return -ENOMEM;

	ops = FUNC10(&pdev->dev);
	if (ops) {
		ret = FUNC17(&pdev->dev, ctlr);
		if (ret)
			goto error1;
	} else {
		ops = (struct spi_ops *)pdev->id_entry->driver_data;
		rspi_pd = FUNC3(&pdev->dev);
		if (rspi_pd && rspi_pd->num_chipselect)
			ctlr->num_chipselect = rspi_pd->num_chipselect;
		else
			ctlr->num_chipselect = 2; /* default */
	}

	/* ops parameter check */
	if (!ops->set_config_register) {
		FUNC2(&pdev->dev, "there is no set_config_register\n");
		ret = -ENODEV;
		goto error1;
	}

	rspi = FUNC22(ctlr);
	FUNC14(pdev, rspi);
	rspi->ops = ops;
	rspi->ctlr = ctlr;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	rspi->addr = FUNC7(&pdev->dev, res);
	if (FUNC0(rspi->addr)) {
		ret = FUNC1(rspi->addr);
		goto error1;
	}

	rspi->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(rspi->clk)) {
		FUNC2(&pdev->dev, "cannot get clock\n");
		ret = FUNC1(rspi->clk);
		goto error1;
	}

	FUNC16(&pdev->dev);

	FUNC9(&rspi->wait);

	ctlr->bus_num = pdev->id;
	ctlr->auto_runtime_pm = true;
	ctlr->transfer_one = ops->transfer_one;
	ctlr->prepare_message = rspi_prepare_message;
	ctlr->unprepare_message = rspi_unprepare_message;
	ctlr->mode_bits = ops->mode_bits;
	ctlr->flags = ops->flags;
	ctlr->dev.of_node = pdev->dev.of_node;

	ret = FUNC12(pdev, "rx");
	if (ret < 0) {
		ret = FUNC12(pdev, "mux");
		if (ret < 0)
			ret = FUNC11(pdev, 0);
		if (ret >= 0)
			rspi->rx_irq = rspi->tx_irq = ret;
	} else {
		rspi->rx_irq = ret;
		ret = FUNC12(pdev, "tx");
		if (ret >= 0)
			rspi->tx_irq = ret;
	}
	if (ret < 0) {
		FUNC2(&pdev->dev, "platform_get_irq error\n");
		goto error2;
	}

	if (rspi->rx_irq == rspi->tx_irq) {
		/* Single multiplexed interrupt */
		ret = FUNC20(&pdev->dev, rspi->rx_irq, rspi_irq_mux,
				       "mux", rspi);
	} else {
		/* Multi-interrupt mode, only SPRI and SPTI are used */
		ret = FUNC20(&pdev->dev, rspi->rx_irq, rspi_irq_rx,
				       "rx", rspi);
		if (!ret)
			ret = FUNC20(&pdev->dev, rspi->tx_irq,
					       rspi_irq_tx, "tx", rspi);
	}
	if (ret < 0) {
		FUNC2(&pdev->dev, "request_irq error\n");
		goto error2;
	}

	ret = FUNC19(&pdev->dev, ctlr, res);
	if (ret < 0)
		FUNC5(&pdev->dev, "DMA not available, using PIO\n");

	ret = FUNC8(&pdev->dev, ctlr);
	if (ret < 0) {
		FUNC2(&pdev->dev, "devm_spi_register_controller error.\n");
		goto error3;
	}

	FUNC4(&pdev->dev, "probed\n");

	return 0;

error3:
	FUNC18(ctlr);
error2:
	FUNC15(&pdev->dev);
error1:
	FUNC23(ctlr);

	return ret;
}