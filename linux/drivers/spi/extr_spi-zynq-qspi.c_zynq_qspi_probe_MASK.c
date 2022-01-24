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
typedef  int /*<<< orphan*/  u32 ;
struct zynq_qspi {scalar_t__ irq; void* pclk; void* refclk; int /*<<< orphan*/  data_completion; void* regs; struct device* dev; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct spi_controller {int mode_bits; int max_speed_hz; TYPE_1__ dev; int /*<<< orphan*/  setup; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/  num_chipselect; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 int /*<<< orphan*/  ZYNQ_QSPI_DEFAULT_NUM_CS ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,char*) ; 
 void* FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zynq_qspi*) ; 
 int FUNC9 (struct device*,struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct zynq_qspi*) ; 
 struct spi_controller* FUNC14 (struct device*,int) ; 
 struct zynq_qspi* FUNC15 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC16 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC17 (struct zynq_qspi*) ; 
 int /*<<< orphan*/  zynq_qspi_irq ; 
 int /*<<< orphan*/  zynq_qspi_mem_ops ; 
 int /*<<< orphan*/  zynq_qspi_setup_op ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	int ret = 0;
	struct spi_controller *ctlr;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct zynq_qspi *xqspi;
	u32 num_cs;

	ctlr = FUNC14(&pdev->dev, sizeof(*xqspi));
	if (!ctlr)
		return -ENOMEM;

	xqspi = FUNC15(ctlr);
	xqspi->dev = dev;
	FUNC13(pdev, xqspi);
	xqspi->regs = FUNC7(pdev, 0);
	if (FUNC0(xqspi->regs)) {
		ret = FUNC1(xqspi->regs);
		goto remove_master;
	}

	xqspi->pclk = FUNC6(&pdev->dev, "pclk");
	if (FUNC0(xqspi->pclk)) {
		FUNC5(&pdev->dev, "pclk clock not found.\n");
		ret = FUNC1(xqspi->pclk);
		goto remove_master;
	}

	FUNC10(&xqspi->data_completion);

	xqspi->refclk = FUNC6(&pdev->dev, "ref_clk");
	if (FUNC0(xqspi->refclk)) {
		FUNC5(&pdev->dev, "ref_clk clock not found.\n");
		ret = FUNC1(xqspi->refclk);
		goto remove_master;
	}

	ret = FUNC4(xqspi->pclk);
	if (ret) {
		FUNC5(&pdev->dev, "Unable to enable APB clock.\n");
		goto remove_master;
	}

	ret = FUNC4(xqspi->refclk);
	if (ret) {
		FUNC5(&pdev->dev, "Unable to enable device clock.\n");
		goto clk_dis_pclk;
	}

	/* QSPI controller initializations */
	FUNC17(xqspi);

	xqspi->irq = FUNC12(pdev, 0);
	if (xqspi->irq <= 0) {
		ret = -ENXIO;
		goto remove_master;
	}
	ret = FUNC8(&pdev->dev, xqspi->irq, zynq_qspi_irq,
			       0, pdev->name, xqspi);
	if (ret != 0) {
		ret = -ENXIO;
		FUNC5(&pdev->dev, "request_irq failed\n");
		goto remove_master;
	}

	ret = FUNC11(np, "num-cs",
				   &num_cs);
	if (ret < 0)
		ctlr->num_chipselect = ZYNQ_QSPI_DEFAULT_NUM_CS;
	else
		ctlr->num_chipselect = num_cs;

	ctlr->mode_bits =  SPI_RX_DUAL | SPI_RX_QUAD |
			    SPI_TX_DUAL | SPI_TX_QUAD;
	ctlr->mem_ops = &zynq_qspi_mem_ops;
	ctlr->setup = zynq_qspi_setup_op;
	ctlr->max_speed_hz = FUNC3(xqspi->refclk) / 2;
	ctlr->dev.of_node = np;
	ret = FUNC9(&pdev->dev, ctlr);
	if (ret) {
		FUNC5(&pdev->dev, "spi_register_master failed\n");
		goto clk_dis_all;
	}

	return ret;

clk_dis_all:
	FUNC2(xqspi->refclk);
clk_dis_pclk:
	FUNC2(xqspi->pclk);
remove_master:
	FUNC16(ctlr);

	return ret;
}