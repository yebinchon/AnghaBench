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
struct TYPE_2__ {struct device_node* of_node; } ;
struct spi_controller {int mode_bits; int bus_num; int num_chipselect; TYPE_1__ dev; int /*<<< orphan*/ * mem_ops; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct fsl_qspi {int /*<<< orphan*/  lock; void* clk; void* clk_en; int /*<<< orphan*/  memmap_phy; void* ahb_addr; void* iobase; int /*<<< orphan*/  devtype_data; struct device* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 void* FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,struct resource*) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fsl_qspi*) ; 
 int FUNC6 (struct device*,struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC7 (struct fsl_qspi*) ; 
 int FUNC8 (struct fsl_qspi*) ; 
 int /*<<< orphan*/  FUNC9 (struct fsl_qspi*) ; 
 int /*<<< orphan*/  fsl_qspi_irq_handler ; 
 int /*<<< orphan*/  fsl_qspi_mem_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct fsl_qspi*) ; 
 struct spi_controller* FUNC16 (struct device*,int) ; 
 struct fsl_qspi* FUNC17 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC18 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct spi_controller *ctlr;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct resource *res;
	struct fsl_qspi *q;
	int ret;

	ctlr = FUNC16(&pdev->dev, sizeof(*q));
	if (!ctlr)
		return -ENOMEM;

	ctlr->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD |
			  SPI_TX_DUAL | SPI_TX_QUAD;

	q = FUNC17(ctlr);
	q->dev = dev;
	q->devtype_data = FUNC12(dev);
	if (!q->devtype_data) {
		ret = -ENODEV;
		goto err_put_ctrl;
	}

	FUNC15(pdev, q);

	/* find the resources */
	res = FUNC14(pdev, IORESOURCE_MEM, "QuadSPI");
	q->iobase = FUNC4(dev, res);
	if (FUNC0(q->iobase)) {
		ret = FUNC1(q->iobase);
		goto err_put_ctrl;
	}

	res = FUNC14(pdev, IORESOURCE_MEM,
					"QuadSPI-memory");
	q->ahb_addr = FUNC4(dev, res);
	if (FUNC0(q->ahb_addr)) {
		ret = FUNC1(q->ahb_addr);
		goto err_put_ctrl;
	}

	q->memmap_phy = res->start;

	/* find the clocks */
	q->clk_en = FUNC3(dev, "qspi_en");
	if (FUNC0(q->clk_en)) {
		ret = FUNC1(q->clk_en);
		goto err_put_ctrl;
	}

	q->clk = FUNC3(dev, "qspi");
	if (FUNC0(q->clk)) {
		ret = FUNC1(q->clk);
		goto err_put_ctrl;
	}

	ret = FUNC8(q);
	if (ret) {
		FUNC2(dev, "can not enable the clock\n");
		goto err_put_ctrl;
	}

	/* find the irq */
	ret = FUNC13(pdev, 0);
	if (ret < 0)
		goto err_disable_clk;

	ret = FUNC5(dev, ret,
			fsl_qspi_irq_handler, 0, pdev->name, q);
	if (ret) {
		FUNC2(dev, "failed to request irq: %d\n", ret);
		goto err_disable_clk;
	}

	FUNC11(&q->lock);

	ctlr->bus_num = -1;
	ctlr->num_chipselect = 4;
	ctlr->mem_ops = &fsl_qspi_mem_ops;

	FUNC9(q);

	ctlr->dev.of_node = np;

	ret = FUNC6(dev, ctlr);
	if (ret)
		goto err_destroy_mutex;

	return 0;

err_destroy_mutex:
	FUNC10(&q->lock);

err_disable_clk:
	FUNC7(q);

err_put_ctrl:
	FUNC18(ctlr);

	FUNC2(dev, "Freescale QuadSPI probe failed\n");
	return ret;
}