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
struct stm32_qspi {scalar_t__ mm_size; int /*<<< orphan*/  lock; struct device* dev; struct reset_control* clk; int /*<<< orphan*/  clk_rate; int /*<<< orphan*/  data_completion; struct reset_control* mm_base; int /*<<< orphan*/  phys_base; struct reset_control* io_base; struct spi_controller* ctrl; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct spi_controller {int mode_bits; int bus_num; TYPE_1__ dev; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/  setup; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct reset_control {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 scalar_t__ STM32_QSPI_MAX_MMAP_SZ ; 
 int /*<<< orphan*/  STM32_QSPI_MAX_NORCHIP ; 
 int /*<<< orphan*/  FUNC2 (struct reset_control*) ; 
 int FUNC3 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct reset_control* FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct device*,struct resource*) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32_qspi*) ; 
 struct reset_control* FUNC9 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct device*,struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct stm32_qspi*) ; 
 int /*<<< orphan*/  FUNC16 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC17 (struct reset_control*) ; 
 scalar_t__ FUNC18 (struct resource*) ; 
 struct spi_controller* FUNC19 (struct device*,int) ; 
 struct stm32_qspi* FUNC20 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC21 (struct stm32_qspi*) ; 
 int /*<<< orphan*/  stm32_qspi_irq ; 
 int /*<<< orphan*/  stm32_qspi_mem_ops ; 
 int /*<<< orphan*/  FUNC22 (struct stm32_qspi*) ; 
 int /*<<< orphan*/  stm32_qspi_setup ; 
 int /*<<< orphan*/  FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct spi_controller *ctrl;
	struct reset_control *rstc;
	struct stm32_qspi *qspi;
	struct resource *res;
	int ret, irq;

	ctrl = FUNC19(dev, sizeof(*qspi));
	if (!ctrl)
		return -ENOMEM;

	qspi = FUNC20(ctrl);
	qspi->ctrl = ctrl;

	res = FUNC14(pdev, IORESOURCE_MEM, "qspi");
	qspi->io_base = FUNC7(dev, res);
	if (FUNC0(qspi->io_base)) {
		ret = FUNC1(qspi->io_base);
		goto err;
	}

	qspi->phys_base = res->start;

	res = FUNC14(pdev, IORESOURCE_MEM, "qspi_mm");
	qspi->mm_base = FUNC7(dev, res);
	if (FUNC0(qspi->mm_base)) {
		ret = FUNC1(qspi->mm_base);
		goto err;
	}

	qspi->mm_size = FUNC18(res);
	if (qspi->mm_size > STM32_QSPI_MAX_MMAP_SZ) {
		ret = -EINVAL;
		goto err;
	}

	irq = FUNC13(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC8(dev, irq, stm32_qspi_irq, 0,
			       FUNC5(dev), qspi);
	if (ret) {
		FUNC4(dev, "failed to request irq\n");
		goto err;
	}

	FUNC11(&qspi->data_completion);

	qspi->clk = FUNC6(dev, NULL);
	if (FUNC0(qspi->clk)) {
		ret = FUNC1(qspi->clk);
		goto err;
	}

	qspi->clk_rate = FUNC2(qspi->clk);
	if (!qspi->clk_rate) {
		ret = -EINVAL;
		goto err;
	}

	ret = FUNC3(qspi->clk);
	if (ret) {
		FUNC4(dev, "can not enable the clock\n");
		goto err;
	}

	rstc = FUNC9(dev, NULL);
	if (!FUNC0(rstc)) {
		FUNC16(rstc);
		FUNC23(2);
		FUNC17(rstc);
	}

	qspi->dev = dev;
	FUNC15(pdev, qspi);
	FUNC21(qspi);
	FUNC12(&qspi->lock);

	ctrl->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD
		| SPI_TX_DUAL | SPI_TX_QUAD;
	ctrl->setup = stm32_qspi_setup;
	ctrl->bus_num = -1;
	ctrl->mem_ops = &stm32_qspi_mem_ops;
	ctrl->num_chipselect = STM32_QSPI_MAX_NORCHIP;
	ctrl->dev.of_node = dev->of_node;

	ret = FUNC10(dev, ctrl);
	if (!ret)
		return 0;

err:
	FUNC22(qspi);
	return ret;
}